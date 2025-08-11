table 50101 "Seminar"
{
    Caption = 'Seminar';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }

        field(2; "Description"; Text[255])
        {
            DataClassification = CustomerContent;
        }

        field(3; "Begin"; DateTime)
        {
            Caption = 'Begin';
            DataClassification = CustomerContent;
        }

        field(4; "End"; DateTime)
        {
            Caption = 'End';
            DataClassification = CustomerContent;
        }

        field(5; "Duration (Hours)"; Integer)
        {
            Caption = 'Duration (Hours)';
            DataClassification = CustomerContent;
        }

        field(6; "Organizer"; Code[20])
        {
            Caption = 'Organizer';
            TableRelation = Resource;
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                ResourceRecord: Record Resource;
            begin
                if ResourceRecord.Get("Organizer") then
                    "Organizer Name" := ResourceRecord.Name;
            end;
        }

        field(7; "Organizer Name"; Text[255])
        {
            Caption = 'Organizer Name';
            DataClassification = CustomerContent;
            Editable = false;
        }

        field(8; "Price"; Decimal)
        {
            Caption = 'Price';
            DataClassification = CustomerContent;
        }

        field(9; "Min Participants"; Integer)
        {
            Caption = 'Min Participants';
            DataClassification = CustomerContent;
        }

        field(10; "Max Participants"; Integer)
        {
            Caption = 'Max Participants';
            DataClassification = CustomerContent;
        }

        field(11; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = SystemMetadata;
        }

        field(12; "Last Modified by"; Code[50])
        {
            Caption = 'Last Modified by';
            DataClassification = SystemMetadata;
            Editable = false;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    trigger OnModify()
    var
        User: Code[50];
    begin
        "Last Modified by" := UserId;
    end;

    trigger OnInsert()
    begin
        "Last Modified by" := UserId;
    end;
}