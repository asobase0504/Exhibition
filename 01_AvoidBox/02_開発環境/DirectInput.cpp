//=============================================================================
//
// 入力処理 [directinput.cpp]
// Author : KOZUNA HIROHITO
//
//=============================================================================

//-----------------------------------------------------------------------------
//インクルードファイル
//-----------------------------------------------------------------------------
#include "DirectInput.h"

//-----------------------------------------------------------------------------
//静的メンバ変数宣言
//-----------------------------------------------------------------------------
LPDIRECTINPUT8 CDirectInput::m_pInput = nullptr;

//*************************************************************************************
//コンストラクタ
//*************************************************************************************
CDirectInput::CDirectInput()
{
}

//*************************************************************************************
//デストラクタ
//*************************************************************************************
CDirectInput::~CDirectInput()
{
}

//*************************************************************************************
//DirectInputオブジェクトの生成
//*************************************************************************************
HRESULT CDirectInput::Create(HINSTANCE hInstance, HWND hWnd)
{
	//DirectInputオブジェクトの生成
	if (FAILED(DirectInput8Create(hInstance, DIRECTINPUT_VERSION,
		IID_IDirectInput8, (void**)&m_pInput, NULL)))
	{
		return E_FAIL;
	}

	return S_OK;
}

//*************************************************************************************
//DirectInputオブジェクトの破棄
//*************************************************************************************
void CDirectInput::Break(void)
{
	//DirectInputオブジェクトの破壊
	if (m_pInput != NULL)
	{
		m_pInput->Release();
		m_pInput = NULL;
	}
}

