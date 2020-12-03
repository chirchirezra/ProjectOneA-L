table 50000 Student
{
    DataClassification = CustomerContent;

    fields
    {
        field(50000; "Admision Number"; Integer)
        {
            Caption = 'Admission Number';
            DataClassification = ToBeClassified;

        }
        field(50001; Name; Text[1028])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(50002; "Gender"; Option)
        {
            Caption = 'Gender';
            DataClassification = CustomerContent;
            OptionMembers = "Male","Female","Other";
            OptionCaption = 'Male,Female,Other';
        }
        field(50003; Age; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Age';
        }

    }

    keys
    {
        key(PK; "Admision Number")
        {
            Clustered = true;
        }
    }


    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}