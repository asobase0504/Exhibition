//=============================================================================
//
// プレイヤー追従の敵
// Author:Yuda Kaito
//
//=============================================================================
//-----------------------------------------------------------------------------
// include
//-----------------------------------------------------------------------------
#include <assert.h>
#include "enemy_homing.h"
#include "utility.h"
#include "delay_process.h"

//-----------------------------------------------------------------------------
// 定数
//-----------------------------------------------------------------------------
const D3DXVECTOR3 CEnemyHoming::SCALE = D3DXVECTOR3(0.55f, 1.25f, 0.55f);
const D3DXVECTOR3 CEnemyHoming::MOVE_POWER = D3DXVECTOR3(0.0f, -3.5f, 0.0f);
const int CEnemyHoming::MOVE_START_TIME = 15;	// 移動開始
const int CEnemyHoming::MOVE_END_TIME = 15;	// 移動終了

//-----------------------------------------------------------------------------
// コンストラクタ
//-----------------------------------------------------------------------------
CEnemyHoming::CEnemyHoming()
{
	SetType(CObject::EType::PLAYER);
}

//-----------------------------------------------------------------------------
// デストラクタ
//-----------------------------------------------------------------------------
CEnemyHoming::~CEnemyHoming()
{
}

//-----------------------------------------------------------------------------
// 初期化
//-----------------------------------------------------------------------------
HRESULT CEnemyHoming::Init()
{
	// 現在のモーション番号の保管
	CEnemy::Init();
	SetScale(SCALE);

	return S_OK;
}

//-----------------------------------------------------------------------------
// 終了
//-----------------------------------------------------------------------------
void CEnemyHoming::Uninit()
{
	CEnemy::Uninit();
}

void CEnemyHoming::PopUpdate()
{
	CEnemy::PopUpdate();

	if (m_updateStatus == EUpdateStatus::NORMAL)
	{
		CDelayProcess::DelayProcess(MOVE_START_TIME, this, [this]()
		{
			SeeTarget();
			SetMove(MOVE_POWER);
		}, MOVE_END_TIME);
	}
}

//-----------------------------------------------------------------------------
// 更新
//-----------------------------------------------------------------------------
void CEnemyHoming::NormalUpdate()
{
	if (OnHitPlain())
	{
		SetUpdateStatus(EUpdateStatus::END);
	}
}

//-----------------------------------------------------------------------------
// 終了更新
//-----------------------------------------------------------------------------
void CEnemyHoming::EndUpdate()
{
	CEnemy::EndUpdate();
}

//-----------------------------------------------------------------------------
// 描画
//-----------------------------------------------------------------------------
void CEnemyHoming::Draw()
{
	CEnemy::Draw();
}

//-----------------------------------------------------------------------------
// 移動量の設定
//-----------------------------------------------------------------------------
void CEnemyHoming::SetMove(const D3DXVECTOR3 & inMove)
{
	D3DXMATRIX mtxRot;
	D3DXMatrixRotationYawPitchRoll(&mtxRot, m_rot.y, m_rot.x, m_rot.z);		// 行列回転関数

	D3DXVECTOR3 move = inMove;
	D3DXVec3TransformCoord(&move, &move, &mtxRot);

	CObjectX::SetMove(move);
}

//-----------------------------------------------------------------------------
// 移動量の設定
//-----------------------------------------------------------------------------
void CEnemyHoming::SeeTarget()
{
	CObject* object = SearchType(CObject::EType::PLAYER, CTaskGroup::EPriority::LEVEL_3D_1);

	D3DXVECTOR3 dist = m_pos - object->GetPos();

	D3DXVECTOR3 rot(0.0f, 0.0f, 0.0f);
	rot.y = atan2f(dist.x, dist.z);
	rot.x = atan2f(sqrtf(dist.z * dist.z + dist.x * dist.x), dist.y);

	SetRot(rot);
}
