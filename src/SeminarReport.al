report 50120 "Seminar Report"
{
    Caption = 'Seminar Report';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem(Seminar; Seminar)
        {
            column(SeminarNo; "No.")
            {
                Caption = 'Seminar No.';
            }
            column(Description; Description)
            {
                Caption = 'Description';
            }

            column(BeginTime; "Begin")
            {
                Caption = 'Begin';
            }
            column(EndTime; "End")
            {
                Caption = 'End';
            }
            column(Duration; "Duration (Hours)")
            {
                Caption = 'Duration (Hours)';
            }
            column(OrganizerName; "Organizer Name")
            {
                Caption = 'Organizer Name';
            }
            column(Price; Price)
            {
                Caption = 'Price';
            }
            column(MinParticipants; "Min Participants")
            {
                Caption = 'Min Participants';
            }
            column(MaxParticipants; "Max Participants")
            {
                Caption = 'Max Participants';
            }
        }
    }
}