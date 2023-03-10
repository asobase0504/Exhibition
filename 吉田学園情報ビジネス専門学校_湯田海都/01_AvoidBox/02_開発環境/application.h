//=============================================================================
//
// マネジャー
// Author : 浜田琉雅
// AUthor : Yuda Kaito
//
//=============================================================================
#ifndef _MANEAGER_H_			// このマクロ定義がされてなかったら
#define _MANEAGER_H_			// 二重インクルード防止のマクロ定義

//-----------------------------------------------------------------------------
// include
//-----------------------------------------------------------------------------
#include "renderer.h"

//-----------------------------------------------------------------------------
// 前方宣言
//-----------------------------------------------------------------------------
class CRenderer;
class CInput;
class CTexture;
class CMode;
class CFade;
class CSound;
class CTaskGroup;
class CObjectXGroup;
class CColor;

//=============================================================================
// マネジャークラス
//=============================================================================
class CApplication
{
public:

	static const D3DXVECTOR3 CENTER_POS;	// 中央位置

	//画面(モード)の種類
	enum MODE
	{
		MODE_TITLE = 0,		// タイトル画面
		MODE_GAME,			// ゲーム画面
		MODE_EDIT,			// エディタ画面
		MODE_FADE,			// フェード画面
		MODE_TUTORIAL,		// チュートリアル画面
		MODE_MAX
	};

/* シングルトン */
private: // 静的メンバー変数
	static CApplication* m_pApplication;
public: // 静的関数
	static CApplication* GetInstance();
private:
	CApplication();

public:	// メンバー関数
	~CApplication();

	HRESULT Init(HWND hWnd, HINSTANCE hInstance);
	void Uninit();
	void Update();
	void Draw();

	void SetWcex(WNDCLASSEX inWcex) { m_wcex = inWcex; }
	WNDCLASSEX GetWcex() { return m_wcex; }

	HWND GetWindow() { return m_hWindow; }

	CRenderer* GetRenderer() { return m_pRenderer; }
	CTexture* GetTexture() { return m_pTexture; }
	CTaskGroup* GetTaskGroup() { return m_pTaskGroup; }
	CObjectXGroup* GetObjectXGroup() { return m_pObjectXGroup; }
	CFade* GetFade() { return m_pFade; }

	void SetMode(CApplication::MODE inMode);
	MODE* GetMode() { return &m_mode; }

	CSound* GetSound() { return m_pSound; }
	CColor* GetColor() { return m_color; }

	void Delay(int intime, int inDelay);

private:
	CTexture* m_pTexture;
	CRenderer* m_pRenderer;
	CTaskGroup* m_pTaskGroup;
	CFade* m_pFade;
	CMode* m_pMode;
	CSound* m_pSound;
	CColor* m_color;
	CObjectXGroup* m_pObjectXGroup;
	MODE m_mode;

	/* 遅延 */
	bool m_needDelay;
	int m_delayTime;
	int m_delayInterval;
	int m_delayCnt;

	HWND m_hWindow;
	WNDCLASSEX m_wcex;
};
#endif
