#INCLUDE "PROTHEUS.CH"
#INCLUDE "RWMAKE.CH"

/*
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  �MA020ROT  �Autor  �Marcelo - Ethosx    � Data �  18/11/19   ���
�������������������������������������������������������������������������͹��
���Desc.     � Ponto-de-Entrada: MA020ROT - Adiciona mais opcoes ao menu  ���
���          �                                                            ���
���          � LOCALIZACAO: Function MATA020 - Funcao principal do progra-���
���          �ma de inclus�o, alteracao e exclusao de fornecedores.       ���
���          �                                                            ���
���          � EM QUE PONTO :  No inicio da Funcao, antes da execucao da  ���
���          �Mbrowse dos Fornecedores, utilizado para adicionar mais     ���
���          �opcoes de menu (no aRotina).                                ���
���          �                                                            ���
�������������������������������������������������������������������������͹��
���Uso       � 3Corp                                                      ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
*/            

User Function MA020ROT()

Local aRetorno:= {}

Aadd(aRetorno,{'Incluir Cliente'	,'Processa({|| U_Cor05A04()},"Incluir Cliente")'	,0	,2	,NIL})

Return(aRetorno)