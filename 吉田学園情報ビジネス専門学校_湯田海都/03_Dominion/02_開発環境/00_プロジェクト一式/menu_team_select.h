//=========================================
// 
// チーム選択のメニュークラス
// Author YudaKaito
// 
//=========================================
#ifndef _TEAM_SELECT_MENU_H_
#define _TEAM_SELECT_MENU_H_

#include "object2d.h"
#include "menu.h"
#include <vector>

//-----------------------------------------
// メニュークラス
//-----------------------------------------
class CTeamSelectMenu :public CMenu
{
public:	// パブリック関数
	CTeamSelectMenu();
	~CTeamSelectMenu();

	void UpdateBeforeDecision();
	void UpdateAfterDecision();
};

//-----------------------------------------
// フレームクラス
//-----------------------------------------
class CTeamSelectMenuFream : public CMenuFream
{
public:	// パブリック関数
	CTeamSelectMenuFream(CObject::TYPE type = CObject::TYPE::NONE);
	~CTeamSelectMenuFream() override;

	HRESULT Init() override;
	void Uninit() override;
	void Update() override;

private: // プライベート関数

private: // メンバー変数

};

//-----------------------------------------
// 項目クラス
//-----------------------------------------
class CTeamSelectMenuItem : public CMenuItem
{
public:	// パブリック関数
	CTeamSelectMenuItem(CObject::TYPE type = CObject::TYPE::NONE);
	~CTeamSelectMenuItem() override;

	HRESULT Init() override;
	void Uninit() override;

	void PopUpdate() override;
	void SelectUpdate() override;
	void NomalUpdate() override;
	void EndUpdate() override;
private: // プライベート関数

private: // メンバー変数
	CObject2D* m_text;
};

#endif // !_CHARACTER_H_
