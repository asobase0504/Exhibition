//=============================================================================
//
// プレイヤー設定ヘッター
// Author:Yuda Kaito
//
//=============================================================================
#ifndef _PLAYER_H_
#define _PLAYER_H_

//-----------------------------------------------------------------------------
// include
//-----------------------------------------------------------------------------
#include "motion.h"
#include "objectX.h"

class CPlayer : public CObjectX
{
private: // 定数
	static const float MAX_SPEED;		// 最大移動量
	static const float SPEED;			// 移動量
	static const float ATTENUATION;		// 減衰係数
	static const float JUMPING_POWER;	// 跳躍力
	static const float GRAVITY;			// 重力

public: // パブリック関数
	CPlayer();
	~CPlayer();

	HRESULT Init() override;		// 初期化
	void Uninit() override;			// 破棄
	void NormalUpdate() override;	// 更新
	void Draw() override;			// 描画

	static CPlayer* Create();	// 生成

	// ゴール状態
	void SetIsGoal(bool isGoal) { m_isGoal = isGoal; }
	bool GetIsGoal() { return m_isGoal; }

	// 移動許可
	void SetIsMove(bool isMove) { m_isMove = isMove; }
	bool IsMove() { return m_isMove; }

	// 死亡状態
	bool IsDied() { return m_isDied; }

private: // プライベート関数
	void Move();		// 移動
	void Jump();		// 跳躍
	void boost();		// 突進
	void Landing();		// 落下

	void NextStageWait();	// 次のステージまで待機させる

	/* 当たり判定 */
	void OnHitGoal();	// Goalとの当たり判定
	void OnHitEnemy();	// Enemyとの当たり判定
	bool OnHitPlain();	// Polygonとの当たり判定

private: // メンバー変数

	D3DXQUATERNION m_quaternion;	// クオータニオン
	D3DXQUATERNION m_quaternionOld;	// 前回クオータニオン
	bool m_isGoal;					// Goalしたか
	bool m_isMove;					// 動いていいか

	// ジャンプ
	D3DXVECTOR3 jumpDirection;		// ジャンプ方向
	bool m_isJump;					// ジャンプできるか
	int m_jumpCount;				// ジャンプ回数
	int m_jumpTime;					// ジャンプ時間

	bool m_isDied;
};
#endif
