xmlport 50112 "Resource Ledger Export"
{
    Caption = 'Export Resource Ledger Entries';
    Direction = Export;

    schema
    {
        textelement(Root)
        {
            tableelement(ResourceLedgerEntry; "Res. Ledger Entry")
            {
                RequestFilterFields = "Posting Date", "Seminar No.";

                fieldelement(EntryNo; ResourceLedgerEntry."Entry No.") { }
                fieldelement(PostingDate; ResourceLedgerEntry."Posting Date") { }
                fieldelement(ResourceNo; ResourceLedgerEntry."Resource No.") { }
                fieldelement(Quantity; ResourceLedgerEntry.Quantity) { }
                fieldelement(SeminarNo; ResourceLedgerEntry."Seminar No.") { }
                fieldelement(TotalPrice; ResourceLedgerEntry."Total Price") { }
            }
        }
    }
}