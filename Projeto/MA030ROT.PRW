#INCLUDE "PROTHEUS.CH"
#INCLUDE "RWMAKE.CH"

/*
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  �MA030ROT  �Autor  �Marcelo - Ethosx    � Data �  18/11/19   ���
�������������������������������������������������������������������������͹��
���Desc.     � Ponto-de-Entrada: MA030ROT - Inclus�o de novas rotinas     ���
���          �                                                            ���
���          � Ap�s a cria��o do aRotina, para adicionar novas rotinas    ���
���          �ao programa.                                                ���
���          �                                                            ���
���          � Para adicionar mais rotinas, adicionar mais subarrays ao   ���
���          �array. No advanced este n�mero � limitado.                  ���
���          �                                                            ���
���          � Deve se retornar um array onde cada subarray � uma linha a ���
���          �ser adicionada ao aRotina padr�o.                           ���
���          �                                                            ���
�������������������������������������������������������������������������͹��
���Uso       � 3Corp                                                      ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
*/

User Function MA030ROT()

Local aRetorno:= {}

Aadd(aRetorno,{'Incluir Fornecedor'	,'Processa({|| U_Cor05A04()},"Incluir Fornecedor")'	,0	,2	,NIL})

Return(aRetorno)