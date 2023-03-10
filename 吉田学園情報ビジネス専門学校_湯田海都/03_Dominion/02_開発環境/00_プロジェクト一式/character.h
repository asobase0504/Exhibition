//=========================================
// 
// プレイヤークラス
// Author YudaKaito
// 
//=========================================
#ifndef _CHARACTER_H_
#define _CHARACTER_H_

#include "object2d.h"
#include <vector>

//-----------------------------------------
// 前方宣言
//-----------------------------------------
class CController;
class CBullet;
class CBlock;
class CRemaubsBullet;
class CStage;

//-----------------------------------------
// プレイヤークラス
//-----------------------------------------
class CCharacter : public CObject2D
{
public: // 定義
	static const int LIMIT_BULLET_COUNT;	// 弾の最大数
	static const int RELOAD_TIME;			// リロード時間
	static const float MOVE_SPEAD;			// 移動速度

public: // 列挙型
	enum TEAM
	{
		TEAM_00,
		TEAM_01
	};

private: // プライベート関数
	enum DIRECTION
	{
		LeftTop = 0,	// 左上
		CenterTop,		// 上
		RightTop,		// 右上
		LeftCenter,		// 左真ん中
		CenterCenter,	// 真ん中
		RightCenter,	// 右真ん中
		LeftBottom,		// 左下
		CenterBottom,	// 下
		RightBottom		// 右下
	};

public:
	CCharacter(CObject::TYPE type = CObject::TYPE::CHARACTER);
	~CCharacter() override;

	HRESULT Init() override;
	void Uninit() override;
	void Update() override;
	void Draw() override;

	void Move();
	void BulletShot();

	// Setter
	void SetController(CController* inOperate);
	void SetCenterBlockIndex(std::vector<int> inIndex) { m_ofBlockIndexCenter = inIndex; }
	void SetTeam(const TEAM inTeam);
	bool SetBlockIndex(const int count,std::vector<int> inIndex);
	void SetOperationState(const bool inState) { m_isOperationState = inState; }
	void SetStage(CStage* inStage);

	// Getter
	std::vector<std::vector<int>> GetOfBlock() { return m_ofBlockIndex; }
	std::vector<int> GetCenterBlock() { return m_ofBlockIndexCenter; }
	TEAM GetTeam() { return m_team; }
	int GetRemainsBullet() { return m_remainsBulletCount; }

	static CCharacter* Create(TEAM inTeam);

	bool HitWithBlock(CBlock* inBlock);

private: // プライベート関数
	void BulletReload();		// 弾をリロードする処理
	void ScreenFromOutTime();	// 画面外に行く場合の処理

	void Collision();	// 当たり判定

	void HitWithAnotherTeamBlock(CBlock* inBlock, DIRECTION inDirection, std::vector<DIRECTION> inAround);

private:
	CController* m_controller;	// 命令を出す人
	CStage* m_stage;	// ステージ
	TEAM m_team;				// 所属してるチーム
	D3DXVECTOR3 m_move;			// 移動量
	std::vector<CRemaubsBullet*> m_remainsBulletDisplay;	// 表示数
	int m_remainsBulletCount;								// 残りの弾数
	int m_reloadCount;										// リロードカウント
	std::vector<std::vector<int>> m_ofBlockIndex;			// 乗ってるブロックの番号
	std::vector<int> m_ofBlockIndexCenter;					// 中心が乗ってるブロックの番号
	int m_ofBlockCount;										// 乗ってるブロックの個数
	float m_spead;											// 速度
	bool isCopied;											// コピー済みか
	bool m_isOperationState;
};

#endif // !_CHARACTER_H_
