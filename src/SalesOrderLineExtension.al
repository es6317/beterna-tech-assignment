pageextension 50106 "Sales Order Lines Extension" extends "Sales Order Subform"
{
    actions
    {
        addlast(Processing)
        {
            action(AddSeminar)
            {
                Caption = 'Add Seminar';
                ApplicationArea = All;

                trigger OnAction()
                var
                    SeminarRecord: Record Seminar;
                begin
                    if Page.RunModal(Page::"Seminar List Page", SeminarRecord) = Action::LookupOK then begin
                        Rec.Validate("Seminar No.", SeminarRecord."No.");
                    end;
                end;
            }
        }
    }
}