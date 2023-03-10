//=============================================================================
//
// 背景に動くBoxヘッダー
// Author:Yuda Kaito
//
//=============================================================================
//-----------------------------------------------------------------------------
// include
//-----------------------------------------------------------------------------
#include <assert.h>
#include "bg_box.h"
#include "application.h"
#include "color.h"
#include "utility.h"

//-----------------------------------------------------------------------------
// コンストラクタ
//-----------------------------------------------------------------------------
CBgBox::CBgBox()
{
	SetType(CObject::EType::PLAYER);
}

//-----------------------------------------------------------------------------
// デストラクタ
//-----------------------------------------------------------------------------
CBgBox::~CBgBox()
{
}

//-----------------------------------------------------------------------------
// 初期化
//-----------------------------------------------------------------------------
HRESULT CBgBox::Init()
{
	// 現在のモーション番号の保管
	CObjectX::Init();
	SetType(CObject::NONE);
	LoadModel("BOX");
	SetMaterialDiffuse(0, CApplication::GetInstance()->GetColor()->GetColor(CColor::COLOR_1));
	SetMove(D3DXVECTOR3(0.0f,FloatRandom(15.0f,3.0f),0.0f));
	return S_OK;
}

//-----------------------------------------------------------------------------
// 終了
//-----------------------------------------------------------------------------
void CBgBox::Uninit()
{
	CObjectX::Uninit();
}

//-----------------------------------------------------------------------------
// 更新
//-----------------------------------------------------------------------------
void CBgBox::NormalUpdate()
{
	if (m_pos.y > 5000.0f)
	{
		SetUpdateStatus(EUpdateStatus::END);
	}
}

//-----------------------------------------------------------------------------
// 描画
//-----------------------------------------------------------------------------
void CBgBox::Draw()
{
	CObjectX::Draw();
}

//-----------------------------------------------------------------------------
// 生成
//-----------------------------------------------------------------------------
CBgBox* CBgBox::Create()
{
	CBgBox* box = new CBgBox;

	if (box != nullptr)
	{
		box->Init();
	}

	return box;
}
