//=============================================================================
//
// プレイヤーの残像ヘッター
// Author:Yuda Kaito
//
//=============================================================================
#ifndef _PLAYER_AFTERIMAGE_FALL_H_
#define _PLAYER_AFTERIMAGE_FALL_H_

//-----------------------------------------------------------------------------
// include
//-----------------------------------------------------------------------------
#include "objectX.h"

class CPlayerAfterimageFall : public CObjectX
{
private: // 定数
	static const int MAX_LIFE;
	static const float ALPHA_COLOR;
public: // パブリック関数
	CPlayerAfterimageFall();
	~CPlayerAfterimageFall();

	HRESULT Init() override;		// 初期化
	void Uninit() override;			// 破棄
	void NormalUpdate() override;	// 更新
	void EndUpdate() override;		// 更新
	void Draw() override;			// 描画

	static CPlayerAfterimageFall* Create(const D3DXVECTOR3& inPos);	// 生成

private: // メンバー変数
	int m_life;	// 寿命
};
#endif
#pragma once
