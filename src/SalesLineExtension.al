tableextension 50105 "Sales Line Extension" extends "Sales Line"
{
    fields
    {
        field(50100; "Seminar No."; Code[20])
        {
            Caption = 'Seminar No.';
            TableRelation = Seminar;
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                SeminarRecord: Record Seminar;
            begin
                if SeminarRecord.Get("Seminar No.") then begin
                    Rec.Type := Rec.Type::Resource;
                    Rec."No." := SeminarRecord.Organizer;
                    Rec."Unit Price" := SeminarRecord.Price;
                end;
            end;
        }
    }
}