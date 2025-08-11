tableextension 50107 "Resource Ledger Entry Ext" extends "Res. Ledger Entry"
{
    fields
    {
        field(50100; "Seminar No."; Code[20])
        {
            Caption = 'Seminar No.';
            TableRelation = Seminar;
            DataClassification = CustomerContent;
        }
    }
}

tableextension 50108 "Resource Journal Line Ext" extends "Res. Journal Line"
{
    fields
    {
        field(50100; "Seminar No."; Code[20])
        {
            Caption = 'Seminar No.';
            TableRelation = Seminar;
            DataClassification = CustomerContent;
        }
    }
}

// copy from sales into res journal

codeunit 50109 "Sales Post Extension"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterPostResJnlLine', '', false, false)]
    local procedure OnAfterPostResJnlLine(SalesHeader: Record "Sales Header"; SalesLine: Record "Sales Line"; JobTaskSalesLine: Record "Sales Line"; ResJnlLine: Record "Res. Journal Line")
    begin
        ResJnlLine."Seminar No." := SalesLine."Seminar No.";
    end;
}

// copy from res journal into res ledger

codeunit 50110 "Res Jnl Line Post Extension"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Res. Jnl.-Post Line", 'OnBeforeResLedgEntryInsert', '', false, false)]
    local procedure OnBeforeResLedgEntryInsert(var ResLedgerEntry: Record "Res. Ledger Entry"; ResJournalLine: Record "Res. Journal Line")
    begin
        ResLedgerEntry."Seminar No." := ResJournalLine."Seminar No.";
    end;
}

// extend pages to show the field
pageextension 50111 ResourceLedgerEntryExt extends "Resource Ledger Entries"
{
    layout
    {
        addlast(Control1)
        {
            field("Seminar No."; Rec."Seminar No.")
            {
                ApplicationArea = All;
                Caption = 'Seminar No.';
            }
        }
    }
}