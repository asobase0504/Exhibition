//=============================================================================
//
// 丸影
// Author:Yuda Kaito
//
//=============================================================================
#ifndef _CIRCLE_SHADOW_H_		//このマクロが定義されてなかったら
#define _CIRCLE_SHADOW_H_		//2重インクルード防止のマクロ定義

//-----------------------------------------------------------------------------
// include
//-----------------------------------------------------------------------------
#include "object_polygon3d.h"

//-----------------------------------------------------------------------------
// 前方宣言
//-----------------------------------------------------------------------------
class CObject;

//-----------------------------------------------------------------------------
// 丸影
//-----------------------------------------------------------------------------
class CCircleShadow : public CObjectPolygon3D
{
public:
	CCircleShadow();
	~CCircleShadow();

	HRESULT Init() override;
	void Uninit() override;
	void NormalUpdate() override;

	static CCircleShadow* Create(CObject* inObject);

private:
	CObject* m_parent;
};
#endif