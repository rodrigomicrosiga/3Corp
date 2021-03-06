#INCLUDE "PROTHEUS.CH"
#INCLUDE "TBICONN.CH"
#INCLUDE "COLORS.CH"

/*
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  �M460MARK  �Autor  �Marcelo - Ethosx    � Data �  21/11/19   ���
�������������������������������������������������������������������������͹��
���Desc.     �                                                            ���
���          �                                                            ���
�������������������������������������������������������������������������͹��
���Uso       � 3Corp                                                      ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
*/


User Function M460MARK()

	Local cMark 	:= PARAMIXB[1] // MARCA UTILIZADA
	Local lInvert 	:= PARAMIXB[2] // SELECIONOU "MARCA TODOS"
	Local aArea 	:= GetArea("SC9")
	Local aSc5Area	:= GetArea("SC5")
	Local lRet		:= .T.
	Local cPedido	:= ""
 
	SC5->(DbSetOrder(1))
	SC5->(DbGoTop())
	
	SC9->(DbGoTop())
	 
	While (SC9->(!EOF())) 
	   
		If !Empty(SC9->C9_NFISCAL)
			
			SC9->(DbSkip())
			Loop
		
		EndIf
		
		If (lInvert) // "CHECK ALL" OPTION SELECTED
	   
			If SC9->(IsMark("C9_OK"))

				If SC5->(DbSeek(xFilial("SC5") + SC9->C9_PEDIDO) ) 

					If SC5->C5_BLQ <> '4' .or. Empty(SC5->C5_BLQ)

						lRet:= .F.
						
						If !SC9->C9_PEDIDO $ cPedido
	         	
							cPedido:= cPedido + SC9->C9_PEDIDO + "/"
	         	
						EndIf
						
					EndIf
	         
				EndIf
			
			EndIf
	   
	   Else // "CHECK ALL" OPTION NOT SELECTED

	   		If SC9->(IsMark("C9_OK"))

	   			If SC5->(DbSeek(xFilial("SC5") + SC9->C9_PEDIDO) ) 

	   				If SC5->C5_BLQ <> '4'  .or. Empty(SC5->C5_BLQ)

	   					lRet:= .F.
	         	    
	   					If !SC9->C9_PEDIDO $ cPedido
	         	
	   						cPedido:= cPedido + SC9->C9_PEDIDO + "/"
	         	
	   					EndIf
	   					
	   				EndIf
	         
	   			EndIf
	      
	   		EndIf
	   
	   EndIf
	 
	   SC9->(DbSkip())
	   
	EndDo
	 
	RestArea(aArea)
	RestArea(aSc5Area)
	
	If lRet = .F.
	
		Alert("Pedido n�o est� Liberado para faturamento = " + SubStr(cPedido,1,Len(cPedido)-1))
	
	EndIf
	
Return (lRet)