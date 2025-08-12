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
                    Image = Open;
                    ApplicationArea = All;
                    RunObject = Page "Seminar Card Page";
                }
            }

            group("Resource Ledgers")
            {
                action("Resource Ledger List")
                {
                    Image = List;
                    ApplicationArea = All;
                    RunObject = Page "Resource Ledger Entries";
                }

                action("Export Resource Ledger Entries")
                {
                    ApplicationArea = All;
                    Image = Export;
                    RunObject = XmlPort "Resource Ledger Export";
                }
            }
        }

        addlast(Creation)
        {
            action("New Seminar 2")
            {
                Caption = 'New Seminar';
                RunPageMode = Create;
                Image = New;
                ApplicationArea = All;
                RunObject = Page "Seminar Card Page";
            }
        }
    }
}