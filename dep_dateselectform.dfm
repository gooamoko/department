object DateSelectForm: TDateSelectForm
  Left = 234
  Top = 106
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1044#1072#1090#1072
  ClientHeight = 139
  ClientWidth = 201
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    201
    139)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 29
    Width = 33
    Height = 13
    Caption = #1052#1077#1089#1103#1094
  end
  object Label2: TLabel
    Left = 8
    Top = 64
    Width = 18
    Height = 13
    Caption = #1043#1086#1076
  end
  object MounthComboBox: TComboBox
    Left = 72
    Top = 24
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'MounthComboBox'
    Items.Strings = (
      #1071#1085#1074#1072#1088#1100
      #1060#1077#1074#1088#1072#1083#1100
      #1052#1072#1088#1090
      #1040#1087#1088#1077#1083#1100
      #1052#1072#1081
      #1048#1102#1085#1100
      #1048#1102#1083#1100
      #1040#1074#1075#1091#1089#1090
      #1057#1077#1085#1090#1103#1073#1088#1100
      #1054#1082#1090#1103#1073#1088#1100
      #1053#1086#1103#1073#1088#1100
      #1044#1077#1082#1072#1073#1088#1100)
  end
  object YearEdit: TSpinEdit
    Left = 72
    Top = 56
    Width = 121
    Height = 22
    MaxValue = 2090
    MinValue = 1900
    TabOrder = 1
    Value = 1900
  end
  object OkBtn: TButton
    Left = 22
    Top = 104
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object CancelBtn: TButton
    Left = 104
    Top = 104
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 3
  end
end
