page 50103 "Seminar Card Page"
{
    PageType = Card;
    SourceTable = "Seminar";
    ApplicationArea = All;
    UsageCategory = Tasks;
    Caption = 'Seminar';

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.") { ApplicationArea = All; }
                field("Description"; Rec."Description") { ApplicationArea = All; }
                field("Begin"; Rec."Begin") { ApplicationArea = All; }
                field("End "; Rec."End") { ApplicationArea = All; }
                field("Duration (Hours)"; Rec."Duration (Hours)") { ApplicationArea = All; }
                field("Organizer"; Rec."Organizer") { ApplicationArea = All; }
                field("Organizer Name"; Rec."Organizer Name") { ApplicationArea = All; }
                field("Price"; Rec."Price") { ApplicationArea = All; }
                field("Min Participants"; Rec."Min Participants") { ApplicationArea = All; }
                field("Max Participants"; Rec."Max Participants") { ApplicationArea = All; }
                field("Last Modified by"; Rec."Last Modified by") { ApplicationArea = All; }
            }
        }
    }
}