#include "Protheus.ch"
/*
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  � M410STTS �Autor  � FONTANELLI         � Data �  28/12/18   ���
�������������������������������������������������������������������������͹��
���Desc.     � Alterar valor do Frete antes de Faturar                    ���
�������������������������������������������������������������������������͹��
���Altera��o � 07/02/2020, M�rio Augusto Cavenaghi - EthosX:              ���
���          �             Descontinuado o campo C5_XDESTAT               ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
*/

User Function M410STTS()

	Local _cArea := GetArea()
	Local nOper := PARAMIXB[1]

	If nOper == 6 .Or. nOper == 4// 6 = Copia - 4 = Alterar - Apos confirmar inclusao

		RecLock("SC5",.F.)
		SC5->C5_XSTATUS	:= "01"
		//SC5->C5_XDESTAT := "PEDIDO APROVADO"
		SC5->C5_LIBEROK := ''
		SC5->C5_BLQ     := ''
		SC5->(MsUnlock())

	EndIf


	RestArea(_cArea)

Return()

