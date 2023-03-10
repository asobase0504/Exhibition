//=============================================================================
// 
// ライトの作成
// Author : Hamada Ryuuga
// 
//=============================================================================
//-----------------------------------------------------------------------------
// include
//-----------------------------------------------------------------------------
#include "application.h"
#include "renderer.h"
#include "light.h"
#include "input.h"

//=============================================================================
// コンストラクタ
//=============================================================================
CLight::CLight(CTaskGroup::EPriority inPriority) :
	CTask(inPriority, CTaskGroup::EPushMethod::PUSH_TOP)
{
	SetRole(ROLE_LIGHT);
}

//=============================================================================
// デストラクタ
//=============================================================================
CLight::~CLight()
{

}

//=============================================================================
// 初期化
//=============================================================================
HRESULT CLight::Init(void)
{
	// ライトをクリアする
	memset(m_light, 0, sizeof(m_light));

	// ライトの設定
	D3DXCOLOR color(1.0f, 1.0f, 1.0f, 1.0f);

	Set(D3DLIGHT_DIRECTIONAL, color, D3DXVECTOR3(-0.32f, -0.49f, -0.93f), 0);

	// デバイスへのポインタの取得
	CApplication::GetInstance()->GetRenderer()->GetDevice()->SetRenderState(D3DRS_AMBIENT, color);

	return S_OK;
}

//=============================================================================
// 終了
//=============================================================================
void CLight::Uninit(void)
{
}

//=============================================================================
// 更新
//=============================================================================
void CLight::Update(void)
{
	if (CInput::GetKey()->Press(DIK_I))
	{
		m_light[0].Direction.y += -0.1f;
	}
	if (CInput::GetKey()->Press(DIK_K))
	{
		m_light[0].Direction.y += 0.1f;
	}
	if (CInput::GetKey()->Press(DIK_J))
	{
		m_light[0].Direction.x += -0.1f;
	}
	if (CInput::GetKey()->Press(DIK_L))
	{
		m_light[0].Direction.x += 0.1f;
	}
}

//=============================================================================
// 設定
//=============================================================================
void CLight::Set(D3DLIGHTTYPE type,D3DXCOLOR col, D3DXVECTOR3 vec, int nNum)
{
	// デバイスへのポインタの取得
	LPDIRECT3DDEVICE9 pDevice = CApplication::GetInstance()->GetRenderer()->GetDevice();

	D3DXVECTOR3 vecDir;		// ライトの方向ベクトル

	m_light[nNum].Type = D3DLIGHT_DIRECTIONAL;	// ライトの種類を設定 ( 平行光源 )
	m_light[nNum].Diffuse = col;	// ライトの拡散光を設定 ( ライトの色 )

	vecDir = vec;	// ライトの方向を設定

	// 正規化する ( 大きさ 1 のベクトルにする )
	D3DXVec3Normalize(&vecDir, &vecDir);
	m_light[nNum].Direction = vecDir;

	// ライトを設定する
	pDevice->SetLight(nNum, &m_light[nNum]);

	// ライトを有効にする
	pDevice->LightEnable(nNum, true);
}
