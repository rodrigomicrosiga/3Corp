#INCLUDE 'protheus.ch'

/*
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  �MA410COR  �Autor  �Marcelo - Ethosx    � Data �  21/11/19   ���
�������������������������������������������������������������������������͹��
���Desc.     �                                                            ���
���          �                                                            ���
�������������������������������������������������������������������������͹��
���Uso       � 3Corp                                                      ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
*/

User Function MA410COR()

	Local aCores := {} // PARAMIXB traz a estrutura do array padr�o
	
	aAdd(aCores, {"C5_BLQ == '3'", "BR_PINK", "Em Separa��o"})
	aAdd(aCores, {"Empty(C5_LIBEROK).And.Empty(C5_NOTA) .And. Empty(C5_BLQ)", "ENABLE", "Pedido em Aberto"})
	aAdd(aCores, {"!Empty(C5_NOTA).Or.C5_LIBEROK=='E' .And. Empty(C5_BLQ)", "DISABLE", "Pedido Encerrado"})
	aAdd(aCores, {"!Empty(C5_LIBEROK).And.Empty(C5_NOTA).And. Empty(C5_BLQ)", "BR_AMARELO", "Pedido Liberado"})
	aAdd(aCores, {"C5_BLQ == '1'", "BR_AZUL"})
	aAdd(aCores, {"C5_BLQ == '2'", "BR_LARANJA"})
	aAdd(aCores, {"C5_BLQ == '4'", "BR_BRANCO", "Liberado para Faturamento"})
	
Return aCores