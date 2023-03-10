//=============================================================================
//
// ステージ全体
// Author:Yuda Kaito
//
//=============================================================================
#ifndef _STAGE_H_
#define _STAGE_H_

//-----------------------------------------------------------------------------
// include
//-----------------------------------------------------------------------------
#include "task.h"
#include <unordered_map>
#include <iostream>

//-----------------------------------------------------------------------------
// ステージ
//-----------------------------------------------------------------------------
class CObjectX;
class CEnemy;
class CGoal;
class CPlain;

class CStage : public CTask
{
private: // 定数

	struct SEnemyPop
	{
		int type;
		D3DXVECTOR3 pos;
		D3DXVECTOR3 rot;
		int popFream;
	};

public: // パブリック関数
	CStage();
	~CStage();

	HRESULT Init() override;	// 初期化
	void Uninit() override;		// 破棄
	void Update() override;		// 更新
	void Draw() override;		// 描画

	static CStage* Create();	// 生成

	void SetPos(const D3DXVECTOR3& inPos) { m_pos = inPos; }
	const D3DXVECTOR3& GetPos() { return m_pos; }

	void SetGoal(const D3DXVECTOR3& pos, const int inTime);
	CGoal* GetGoal() { return m_goal; }

	void SetFloor(const D3DXVECTOR3& pos, const D3DXVECTOR3& rot, const D3DXVECTOR3& scale);
	CPlain* GetFloor() { return m_floor; }

	void SetWall(int index, const D3DXVECTOR3& pos, const D3DXVECTOR3& rot, const D3DXVECTOR3& scale);
	std::vector<CPlain*> GetWall() { return std::vector<CPlain*>(std::begin(m_wall), std::end(m_wall)); }

	void AddFloor(const D3DXVECTOR3& pos, const D3DXVECTOR3& rot, const D3DXVECTOR3& scale);
	std::unordered_map<int, CPlain*> GetMidairFloor() { return m_midairFloor; }

	void AddEnemy(const int type, const D3DXVECTOR3& inPos, const D3DXVECTOR3& inRot, const int inFream);
	CEnemy* PopEnemy(const int type, const D3DXVECTOR3& inPos, const D3DXVECTOR3& inRot);
	void StopPopEnemy();
	std::unordered_map<int, SEnemyPop> GetEnemy() { return m_enemy; }

	void SetStart(bool start) { m_isStart = start; }
	bool IsEnd() { return m_isEnd; }

	void EnemyDeath();
	void PopReset() { m_startCnt = -60; }

	void ResetGoal();

private: // プライベート関数

private: // メンバー変数

	D3DXVECTOR3 m_pos;

	/* マップ */
	CGoal* m_goal;		// ゴール
	CPlain* m_floor;	// 床
	CPlain* m_wall[5];	// 壁
	std::unordered_map<int, CPlain*> m_midairFloor;	// 空中床
	std::unordered_map<int, SEnemyPop> m_enemy;		// 出現予定のエネミー

	int m_startCnt;

	bool m_isFrag;
	bool m_isStart;
	bool m_isEnd;
};
#endif
