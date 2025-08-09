pageextension 50104 SeminarNavigationExtension extends "Order Processor Role Center"
{
    actions
    {
        addlast(Sections)
        {
            group("Seminars")
            {
                action("Seminar List")
                {
                    Image = List;
                    ApplicationArea = All;
                    RunObject = Page "Seminar List Page";
                }
                action("New Seminar")
                {
                    RunPageMode = Create;
                    Image = New;
                    ApplicationArea = All;
                    RunObject = Page "Seminar Card Page";
                }
            }
        }

        addlast(Creation)
        {
            action("NewSeminar2")
            {
                RunPageMode = Create;
                ApplicationArea = All;
                RunObject = page "Seminar Card Page";
            }
        }
    }
}