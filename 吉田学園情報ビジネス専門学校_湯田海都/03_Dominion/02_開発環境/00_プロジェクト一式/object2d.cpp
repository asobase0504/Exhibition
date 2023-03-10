//=========================================
// 
// オブジェクトクラス
// Author YudaKaito
// 
//=========================================
#include "object2d.h"
#include "application.h"
#include "renderer.h"
#include "texture.h"
#include <assert.h>

//=============================================================================
// コンストラクタ
//=============================================================================
CObject2D::CObject2D(TYPE type,int inPriority) :
	CObject(type, inPriority),
	m_pVtxBuff(nullptr),
	m_texture("\0"),
	m_rotY(0.0f),
	m_fLength(0.0f),
	m_fAngle(0.0f),
	m_anchor(CENTER)
{
}

//=============================================================================
// デストラクタ
//=============================================================================
CObject2D::~CObject2D()
{
}

//=============================================================================
// ポリゴンの初期化
//=============================================================================
HRESULT CObject2D::Init()
{
	// 頂点バッファの生成
	CApplication::GetInstance()->GetRenderer()->GetDevice()->CreateVertexBuffer(
		sizeof(VERTEX_2D) * 4,
		D3DUSAGE_WRITEONLY,
		FVF_VERTEX_2D,
		D3DPOOL_MANAGED,
		&m_pVtxBuff,
		NULL);

	VERTEX_2D *pVtx = NULL;		// 頂点情報へのポインタ

	m_fLength = sqrtf(m_size.x * m_size.x + m_size.y * m_size.y) * 0.5f;
	m_fAngle = atan2f(m_size.x, m_size.y);

	// 頂点情報をロックし、頂点情報へのポインタを取得
	m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);

	pVtx[0].pos.x = CApplication::GetInstance()->CENTER_X + sinf(m_rotY + m_fAngle + -D3DX_PI) * m_fLength;
	pVtx[0].pos.y = CApplication::GetInstance()->CENTER_Y + cosf(m_rotY + m_fAngle + -D3DX_PI) * m_fLength;
	pVtx[0].pos.z = 0.0f;

	pVtx[1].pos.x = CApplication::GetInstance()->CENTER_X + sinf(m_rotY + -m_fAngle + D3DX_PI) * m_fLength;
	pVtx[1].pos.y = CApplication::GetInstance()->CENTER_Y + cosf(m_rotY + -m_fAngle + D3DX_PI) * m_fLength;
	pVtx[1].pos.z = 0.0f;

	pVtx[2].pos.x = CApplication::GetInstance()->CENTER_X + sinf(m_rotY + m_fAngle * -1.0f) * m_fLength;
	pVtx[2].pos.y = CApplication::GetInstance()->CENTER_Y + cosf(m_rotY + m_fAngle * -1.0f) * m_fLength;
	pVtx[2].pos.z = 0.0f;

	pVtx[3].pos.x = CApplication::GetInstance()->CENTER_X + sinf(m_rotY + m_fAngle) * m_fLength;
	pVtx[3].pos.y = CApplication::GetInstance()->CENTER_Y + cosf(m_rotY + m_fAngle) * m_fLength;
	pVtx[3].pos.z = 0.0f;

	// texの設定
	pVtx[0].tex = D3DXVECTOR2(0.0f,0.0f);
	pVtx[1].tex = D3DXVECTOR2(1.0f,0.0f);
	pVtx[2].tex = D3DXVECTOR2(0.0f,1.0f);
	pVtx[3].tex = D3DXVECTOR2(1.0f,1.0f);

	pVtx[0].rhw = 1.0f;
	pVtx[1].rhw = 1.0f;
	pVtx[2].rhw = 1.0f;
	pVtx[3].rhw = 1.0f;

	// 頂点カラーの設定
	pVtx[0].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
	pVtx[1].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
	pVtx[2].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
	pVtx[3].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);

	// 頂点バッファをアンロックする
	m_pVtxBuff->Unlock();

	return S_OK;
}

//=============================================================================
// ポリゴンの終了
//=============================================================================
void CObject2D::Uninit()
{
	// 頂点バッファの破壊
	if (m_pVtxBuff != nullptr)
	{
		m_pVtxBuff->Release();
		m_pVtxBuff = nullptr;
	}

	m_isDeleted = true;
}

//=============================================================================
// ポリゴンの更新
//=============================================================================
void CObject2D::Update()
{
}

//=============================================================================
// ポリゴンの描画
//=============================================================================
void CObject2D::Draw()
{
	LPDIRECT3DDEVICE9 pDevice = CApplication::GetInstance()->GetRenderer()->GetDevice();

	// 頂点バッファをデータストリームに設定
	pDevice->SetStreamSource(0, m_pVtxBuff, 0, sizeof(VERTEX_2D));

	// 頂点フォーマットの設定
	pDevice->SetFVF(FVF_VERTEX_2D);

	LPDIRECT3DTEXTURE9 texture = CApplication::GetInstance()->GetTextureClass()->GetTexture(m_texture);

	// テクスチャの設定
	pDevice->SetTexture(0, texture);

	// ポリゴンの描画
	pDevice->DrawPrimitive(D3DPT_TRIANGLESTRIP, 0, 2);

	// テクスチャの破棄
	pDevice->SetTexture(0, NULL);
}

//=============================================================================
// 位置の設定
//=============================================================================
void CObject2D::SetPos(const D3DXVECTOR3 & inPos)
{
	CObject::SetPos(inPos);

	VERTEX_2D *pVtx = NULL;		// 頂点情報へのポインタ

	// 頂点情報をロックし、頂点情報へのポインタを取得
	m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);

	switch (m_anchor)
	{
	case CObject2D::CENTER:
		pVtx[0].pos.x = m_pos.x - m_size.x * 0.5f;
		pVtx[0].pos.y = m_pos.y - m_size.y * 0.5f;
		pVtx[0].pos.z = 0.0f;

		pVtx[1].pos.x = m_pos.x + m_size.x * 0.5f;
		pVtx[1].pos.y = m_pos.y - m_size.y * 0.5f;
		pVtx[1].pos.z = 0.0f;

		pVtx[2].pos.x = m_pos.x - m_size.x * 0.5f;
		pVtx[2].pos.y = m_pos.y + m_size.y * 0.5f;
		pVtx[2].pos.z = 0.0f;

		pVtx[3].pos.x = m_pos.x + m_size.x * 0.5f;
		pVtx[3].pos.y = m_pos.y + m_size.y * 0.5f;
		pVtx[3].pos.z = 0.0f;
		break;
	case CObject2D::TOP:
		break;
	case CObject2D::DOWN:
		break;
	case CObject2D::LEFT:
		break;
	case CObject2D::RIGHT:
		break;
	case CObject2D::TOPLEFT:
		pVtx[0].pos.x = m_pos.x - m_size.x;
		pVtx[0].pos.y = m_pos.y;
		pVtx[0].pos.z = 0.0f;

		pVtx[1].pos.x = m_pos.x;
		pVtx[1].pos.y = m_pos.y;
		pVtx[1].pos.z = 0.0f;

		pVtx[2].pos.x = m_pos.x - m_size.x;
		pVtx[2].pos.y = m_pos.y + m_size.y;
		pVtx[2].pos.z = 0.0f;

		pVtx[3].pos.x = m_pos.x;
		pVtx[3].pos.y = m_pos.y + m_size.y;
		pVtx[3].pos.z = 0.0f;
		break;
	case CObject2D::TOPRIGHT:
		pVtx[0].pos.x = m_pos.x;
		pVtx[0].pos.y = m_pos.y;
		pVtx[0].pos.z = 0.0f;

		pVtx[1].pos.x = m_pos.x + m_size.x;
		pVtx[1].pos.y = m_pos.y;
		pVtx[1].pos.z = 0.0f;

		pVtx[2].pos.x = m_pos.x;
		pVtx[2].pos.y = m_pos.y + m_size.y;
		pVtx[2].pos.z = 0.0f;

		pVtx[3].pos.x = m_pos.x + m_size.x;
		pVtx[3].pos.y = m_pos.y + m_size.y;
		pVtx[3].pos.z = 0.0f;
		break;
	case CObject2D::DOWNLEFT:
		pVtx[0].pos.x = m_pos.x - m_size.x;
		pVtx[0].pos.y = m_pos.y - m_size.y;
		pVtx[0].pos.z = 0.0f;

		pVtx[1].pos.x = m_pos.x;
		pVtx[1].pos.y = m_pos.y - m_size.y;
		pVtx[1].pos.z = 0.0f;

		pVtx[2].pos.x = m_pos.x - m_size.x;
		pVtx[2].pos.y = m_pos.y;
		pVtx[2].pos.z = 0.0f;

		pVtx[3].pos.x = m_pos.x;
		pVtx[3].pos.y = m_pos.y;
		pVtx[3].pos.z = 0.0f;
		break;
	case CObject2D::DOWNRIGHT:
		pVtx[0].pos.x = m_pos.x;
		pVtx[0].pos.y = m_pos.y - m_size.y;
		pVtx[0].pos.z = 0.0f;

		pVtx[1].pos.x = m_pos.x + m_size.x;
		pVtx[1].pos.y = m_pos.y - m_size.y;
		pVtx[1].pos.z = 0.0f;

		pVtx[2].pos.x = m_pos.x;
		pVtx[2].pos.y = m_pos.y;
		pVtx[2].pos.z = 0.0f;

		pVtx[3].pos.x = m_pos.x + m_size.x;
		pVtx[3].pos.y = m_pos.y;
		pVtx[3].pos.z = 0.0f;
		break;
	default:
		break;
	}

	// 頂点バッファをアンロックする
	m_pVtxBuff->Unlock();
}

//=============================================================================
// 大きさの設定
//=============================================================================
void CObject2D::SetSize(const D3DXVECTOR2 & inSize)
{
	m_size = inSize;

	m_fLength = sqrtf(m_size.x * m_size.x + m_size.y * m_size.y) * 0.5f;
	m_fAngle = atan2f(m_size.x, m_size.y);

	SetPos(m_pos);
}

//=============================================================================
// 色の設定
//=============================================================================
void CObject2D::SetColor(const D3DXCOLOR & inColor)
{
	m_col = inColor;

	VERTEX_2D *pVtx = NULL;		// 頂点情報へのポインタ

	// 頂点情報をロックし、頂点情報へのポインタを取得
	m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);

	// 頂点カラーの設定
	pVtx[0].col = inColor;
	pVtx[1].col = inColor;
	pVtx[2].col = inColor;
	pVtx[3].col = inColor;

	// 頂点バッファをアンロックする
	m_pVtxBuff->Unlock();
}

//=============================================================================
// 透明色のみの設定
//=============================================================================
void CObject2D::SetColorAlpha(const float inAlpha)
{
	m_col.a = inAlpha;

	VERTEX_2D *pVtx = NULL;		// 頂点情報へのポインタ

	// 頂点情報をロックし、頂点情報へのポインタを取得
	m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);

	// 頂点カラーの設定
	pVtx[0].col = m_col;
	pVtx[1].col = m_col;
	pVtx[2].col = m_col;
	pVtx[3].col = m_col;

	// 頂点バッファをアンロックする
	m_pVtxBuff->Unlock();
}

//=============================================================================
// ポリゴンクラスの作成
//=============================================================================
CObject2D* CObject2D::Create(TYPE type, int inPriority)
{
	CObject2D* objectCreate = new CObject2D(type, inPriority);

	if ((objectCreate == nullptr) || FAILED(objectCreate->Init()))
	{
		assert(false);
	}

	return objectCreate;
}
