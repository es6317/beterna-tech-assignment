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
                if SeminarRecord.Get(Rec."Seminar No.") then begin
                    Rec."Seminar No." := SeminarRecord."No.";
                    Rec.Validate(Type, Rec.Type::Resource);
                    Rec.Validate("No.", SeminarRecord.Organizer);
                    Rec.Validate("Unit Price", SeminarRecord.Price);
                end;
            end;
        }
    }
}