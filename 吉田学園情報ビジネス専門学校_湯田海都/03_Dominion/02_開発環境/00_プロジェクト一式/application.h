//=========================================
// 
// アプリケーションクラス
// Author YudaKaito
// 
//=========================================
#ifndef _APPLICATION_H_
#define _APPLICATION_H_

#include <d3dx9.h>
#include <vector>

//-----------------------------------------
// 前方宣言
//-----------------------------------------
class CRenderer;
class CObject;
class CDirectInput;
class CTexture;
class CMode;
class CThemeColor;
class CInput;
class CSound;

//-----------------------------------------
// アプリケーションクラス
//-----------------------------------------
class CApplication
{
public:
	enum class MODE_TYPE
	{
		TITLE = 0,
		TUTORIAL,
		CUSTUM,
		GAME,
		RESULT,
		MAX
	};

public: // 定数
	const int SCREEN_WIDTH;		// スクリーンの幅
	const int SCREEN_HEIGHT;	// スクリーンの高さ
	const float CENTER_X;		// スクリーン中心座標のX座標
	const float CENTER_Y;		// スクリーン中心座標のY座標

public: // 静的メンバー変数
	static CApplication* application;
public: // 静的関数
	static CApplication* GetInstance();

private: // シングルトン
	CApplication();
public:	// メンバー関数
	~CApplication();

	HRESULT Init(HWND hWnd, HINSTANCE hInstance);
	void Uninit();
	void Update();
	void Draw();

	// Getter
	CRenderer* GetRenderer() { return renderer; }
	CObject** GetMyObject() { return &object; }
	CTexture* GetTextureClass() { return texture; }
	CMode* GetMode() { return mode; }
	CSound* GetSound() { return sound; }
	D3DXCOLOR GetColor(int inKey);
	int GetColorSize();
	D3DXVECTOR2 GetScreenSize() { return D3DXVECTOR2((float)SCREEN_WIDTH, (float)SCREEN_HEIGHT); }
	D3DXVECTOR2 GetScreenCenter() { return D3DXVECTOR2(CENTER_X, CENTER_Y); }

	// Setter
	void SetMode(MODE_TYPE inType);
	void SetThemeColor(int idx);

private: // 動的メンバー変数
	CMode* mode;
	CInput* input;
	CRenderer* renderer;
	CTexture* texture;
	CObject* object;
	CThemeColor* color;
	CSound* sound;
};

#endif // !_APPLICATION_H_
