//=============================================================================
// 
// ライトの作成(ヘッダーファイル)
// Author HAMAD
// 
//=============================================================================
#ifndef _LIGHT_H_
#define _LIGHT_H_

//-----------------------------------------------------------------------------
// include
//-----------------------------------------------------------------------------
#include "task.h"

//-----------------------------------------------------------------------------
// マクロ定義
//-----------------------------------------------------------------------------
#define LIGTH_MAX	(5)

//=============================================================================
// ライトクラス
//=============================================================================
class CLight : public CTask
{
public:
	CLight(CTaskGroup::EPriority inPriority = CTaskGroup::LEVEL_3D_1);
	~CLight();
	HRESULT Init();
	void Uninit();
	void Update();
		
	void Set(D3DLIGHTTYPE type, D3DXCOLOR col, D3DXVECTOR3 vec, int nNum);
	D3DLIGHT9 GetLight(int num) { return m_light[num]; }

	void SetLight(D3DXVECTOR3 inVec) { m_light[0].Direction = inVec; }

private:
	 D3DLIGHT9 m_light[LIGTH_MAX];	//ライト情報
};
#endif // !_LIGHT_H_
