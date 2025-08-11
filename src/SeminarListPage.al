page 50102 "Seminar List Page"
{
    PageType = List;
    SourceTable = Seminar;
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Seminars';
    CardPageId = "Seminar Card Page";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.") { }
                field("Description"; Rec."Description") { }
                field("Begin"; Rec."Begin") { }
                field("End"; Rec."End") { }
                field("Duration (Hours)"; Rec."Duration (Hours)") { }
                field("Organizer"; Rec."Organizer") { }
                field("Organizer Name"; Rec."Organizer Name") { }
                field("Price"; Rec."Price") { }
                field("Min Participants"; Rec."Min Participants") { }
                field("Max Participants"; Rec."Max Participants") { }
                field("Last Modified by"; Rec."Last Modified by") { }
            }
        }
    }
}