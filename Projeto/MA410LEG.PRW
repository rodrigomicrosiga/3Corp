#INCLUDE 'protheus.ch'


/*
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  �MA410LEG  �Autor  �Marcelo - Ethosx    � Data �  21/11/19   ���
�������������������������������������������������������������������������͹��
���Desc.     �                                                            ���
���          �                                                            ���
�������������������������������������������������������������������������͹��
���Uso       � 3Corp                                                      ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
*/

User Function MA410LEG()

	Local aLegenda := PARAMIXB
	
	aLegenda := {}
	
	
	AADD(aLegenda,{"ENABLE" 	,"Pedido de Venda em aberto"	})
	AADD(aLegenda,{"BR_AMARELO" ,"Pedido de Venda liberado"		})
	AADD(aLegenda,{"BR_PINK" 	,"Pedido em Separa��o"			})
	AADD(aLegenda,{"BR_BRANCO" 	,"Liberado para Faturamento"	})
	AADD(aLegenda,{"DISABLE" 	,"Pedido de Venda encerrado"	})
	AADD(aLegenda,{"BR_AZUL" 	,"Pedido Bloqueado por Regra"	})
	AADD(aLegenda,{"BR_LARANJA" ,"Pedido Bloqueado por Verba"	})

Return(aLegenda)