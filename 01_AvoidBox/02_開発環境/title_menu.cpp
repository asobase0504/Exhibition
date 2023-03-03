//=============================================================================
//
// タイトルロゴ
// Author : Yuda Kaito
//
//=============================================================================
//-----------------------------------------------------------------------------
// include
//-----------------------------------------------------------------------------
#include "application.h"
#include "title_menu.h"
#include "utility.h"

//-----------------------------------------------------------------------------
// コンストラクタ
//-----------------------------------------------------------------------------
CTitleMenu::CTitleMenu(CTaskGroup::EPriority list) :
	CObject(list)
{
}

//-----------------------------------------------------------------------------
// デストラクタ
//-----------------------------------------------------------------------------
CTitleMenu::~CTitleMenu()
{
}

//-----------------------------------------------------------------------------
// 初期化
//-----------------------------------------------------------------------------
HRESULT CTitleMenu::Init()
{
	//CObject::Init();
	//D3DXVECTOR3 pos = CApplication::CENTER_POS;
	//SetPos(pos);
	//SetTexture("TITLE_LOGO");

	return S_OK;
}

//-----------------------------------------------------------------------------
// 終了
//-----------------------------------------------------------------------------
void CTitleMenu::Uninit()
{
}

//-----------------------------------------------------------------------------
// 出現中更新
//-----------------------------------------------------------------------------
void CTitleMenu::PopUpdate()
{
	CObject::NormalUpdate();
}

//-----------------------------------------------------------------------------
// 通常中更新
//-----------------------------------------------------------------------------
void CTitleMenu::NormalUpdate()
{
	CObject::NormalUpdate();
}

//-----------------------------------------------------------------------------
// 終了中更新
//-----------------------------------------------------------------------------
void CTitleMenu::EndUpdate()
{
	Release();
}
