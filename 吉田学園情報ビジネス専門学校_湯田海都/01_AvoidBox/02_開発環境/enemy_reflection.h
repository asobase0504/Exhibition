//=============================================================================
//
// エネミー(一方向にすすむ)設定ヘッダー
// Author:Yuda Kaito
//
//=============================================================================
#ifndef _ENEMY_ONEWAY_REFLECTION_H_
#define _ENEMY_ONEWAY_REFLECTION_H_

//-----------------------------------------------------------------------------
// include
//-----------------------------------------------------------------------------
#include "enemy.h"

//-----------------------------------------------------------------------------
// エネミークラス
//-----------------------------------------------------------------------------
class CEnemyReflection : public CEnemy
{
private: // 定数
	static const D3DXVECTOR3 SCALE;
	static const D3DXVECTOR3 MOVE_POWER;
	static const int REFLECT_COUNT;
	static const int MAX_LIFE;

public: // パブリック関数
	CEnemyReflection();
	~CEnemyReflection();

	HRESULT Init() override;		// 初期化
	void Uninit() override;			// 破棄
	void NormalUpdate() override;	// 更新
	void EndUpdate() override;		// 終了更新
	void Draw() override;	// 更新

	void SetMove(const D3DXVECTOR3& inMove) override;

private: // プライベート関数

private: // メンバー変数
	int m_reflectCnt;
	int m_life;
};
#endif
