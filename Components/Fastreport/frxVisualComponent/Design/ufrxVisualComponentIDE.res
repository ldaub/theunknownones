        ��  ��                  �      �� ��                 (       @                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ������<���𰯮��������������������<���                                                                                ������r����xww�TSS�JIJ�III�IIH�IIH�TSR�utt�������֠���.                                                                ������N����kkk�RRR�sss���������������������nnn�KKK�FEE�OOO�������Ҭ���4                                                    �������ppp�iii�������ڒ���\                ���
���l��Ӫ����WWX�DDD�SSS��������8                                                �����������נ���                                ������*��ٚ����XVV�GEE�������ږ���                                        �����������^                                        ���jT]����֎�����Ѳ����HFF�mkk���Ѱ���                                                ���������������                ���HX��/��4F��        ���V����___�TTS��������F                                            vxx�Y[\�Y[\�]\`����(        �������3��0��-��q|��            �����Ѷ����HIG�������ބ                                        68:�'*,�(+-�-/1����*    ���0����,��0��-A���������                ������H����bcb�cdc�                                        =?A�'*,�'),�@E?����n{���BR��,��1��0��EV����َ���                        ������~����    �������\���                        =?A�'*,�&)+�6;7�����V\��U\��jp��r|��2��0��2������                                        \\\�|||��������D                    =?A�'*,�'*,�&)+�&((�(*#�(*$�:;0�����6��0��0��+?��                                        ����yzy�JKJ��������|���            =?A�'*,�'*,�'*+�PQ\�qs��np}�y{������4��0��0��2E��                                        ������L����HIH�hhh��������:        =?A�'*,�&)+�8:3���͠|���r}��q��K]��1��+��'8������                                                ���D����dcc�MLL��������f���<>@�'*,�&)+�-0.����䒙�썕�􎕲򍔳������ž���X        ���<���z                                        �����֠xww�FDD�jjj�����DEH�'*,�'*,�&)+�354�DD?�DD>�DD>�@@<�jmd�        �����ژ��������                                            ���
���P����IHH�HGG�vuu��������p���
���                    ���
���f����bbb�|||���آ                                                    ���4����sss�GGG�GGG�oop������������z���z���x���z��������qqq�^^^�������۔���                                                        ������b����||{�JII�FFE�HHH�OON�SSS�SSS�OMO�LKL�RQR�������ל���"                                                                        ���
���*��Ԥ��������{{z�yyx�{{{�����������ך���$                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ���������������������������  ��?������������������������� � ���  � ��������������������������������h      �� ��                 (                                                                                                                                                                                                                                                     ����������⏎�����������������Z���                        ���R���ߟ��ʓ��l���@���@���nvuuǄ�����п���#                    �������{                ���#��ثL]�xqpp٢������P                    ���(��������    ���M����Wd��IY�&��������������x���2            ���B+-0� #"㣨������3G��+�����        ���M��������������"    ���?68:�(++�AHM�7;T�ej��+?��0B�D                ���E�����������X���?579�&)(�XZl�ot��x���$:��,@�&���                ���������������8:=�&))�`cr�w~��ho�����*�����ߢ                        ���biii䠠�������������y�������߬��˥��9                            ������`wwv�{{{ǂ��ǆ������Y���                                                                                                                                                                                                                ���A���A���A��A��A灬A� �Ap�A�A �A��A��A��A���A���A���Af   $   ��
 D F M                   object $FormIdent$: T$FormIdent$
 Left = 0
 Top = 0
 Width = 320
 Height = 240
 TabOrder = 0
end  "   H   �� F R X V I S U A L C O M P O N E N T I D E                              �        h     �  (   ��
 U N I T                     unit $ModuleIdent$;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ufrxVisualComponent, frxDsgnIntf, fs_iinterpreter;

type
  T$FormIdent$ = class(T$AncestorIdent$)
  private

  public
		
  end;

  TfrxVisualComponent$Ident$ = class(TfrxVisualComponent)
  private
    FFrame : T$FormIdent$;
  public  
    constructor Create(AOwner : TComponent); override;  
  published
    //Add the properties, which should be shown in the Fasreport-Designer
  end;
  
  TfrxVisualComponentRTTI$Ident$ = class(TfsRTTIModule)
  public
    constructor Create(AScript: TfsScript); override;
  end;

implementation

{$R *.dfm}
 
{ TfrxVisualComponent$Ident$ }

constructor TfrxVisualComponent$Ident$.Create(AOwner: TComponent);
begin
  inherited;
  FFrame := T$FormIdent$.Create(self);
  _FFrame := FFrame;
end;

{ TfrxVisualComponentRTTI$Ident$ }

constructor TfrxVisualComponentRTTI$Ident$.Create(AScript: TfsScript);
begin
  inherited;
  with AScript do
  begin
    AddClass(TfrxVisualComponent$Ident$, 'TfrxVisualComponent');
  end;
end;

initialization
  fsRTTIModules.Add(TfrxVisualComponentRTTI$Ident$);
  frxObjects.RegisterObject1(TfrxVisualComponent$Ident$, nil, '', FRX_VISUALCOMPONENT_GROUP, 
                             0, TryLoadFrxObjectIcon(hInstance, 'TfrxVisualComponent$Ident$'));

finalization
  frxObjects.Unregister(TfrxVisualComponent$Ident$);

end.