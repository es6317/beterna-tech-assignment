
tableextension 50113 "Sales Invoice Line Ext" extends "Sales Invoice Line"
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



// add seminar to sales invoice
codeunit 50114 "Sales Invoice Line Insert Ext"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforeSalesInvLineInsert', '', false, false)]
    local procedure OnBeforeSalesInvLineInsert(var SalesInvLine: Record "Sales Invoice Line"; SalesInvHeader: Record "Sales Invoice Header"; SalesLine: Record "Sales Line"; CommitIsSuppressed: Boolean; var IsHandled: Boolean; PostingSalesLine: Record "Sales Line"; SalesShipmentHeader: Record "Sales Shipment Header"; SalesHeader: Record "Sales Header"; var ReturnReceiptHeader: Record "Return Receipt Header")
    begin
        SalesInvLine.Validate("Seminar No.", SalesLine."Seminar No.");
    end;
}


// extend report

reportextension 50113 "Posted Sales Invoice Ext" extends "Standard Sales - Invoice"
{
    dataset
    {
        add(Line)
        {
            column(SeminarNo; "Seminar No.") { }
        }
    }
}