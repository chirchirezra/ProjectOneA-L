table 50007 "Random Users"
{
    DataClassification = CustomerContent;

    fields
    {
        field(50000; "No."; Integer)
        {
            DataClassification = CustomerContent;

        }
        field(50001; "First Name"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(50002; "Last Name"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(50003; Title; code[30])
        {
            DataClassification = CustomerContent;
        }
        field(50004; City; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(50005; State; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(50006; Country; Text[30])
        {
            DataClassification = CustomerContent;
        }
        field(50007; Email; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(50008; "User Name"; Text[20])
        {
            DataClassification = CustomerContent;
        }
        field(50009; Password; Text[20])
        {
            DataClassification = CustomerContent;

        }
        field(50010; Phone; Text[20])
        {
            DataClassification = CustomerContent;

        }
        field(50011; Picture; Text[100])
        {
            DataClassification = CustomerContent;

        }
        field(50012; "Registration Date"; DateTime)
        {
            DataClassification = CustomerContent;

        }
        field(50013; Gender; Option)
        {
            OptionMembers = "Male","Female","Other";
            DataClassification = CustomerContent;

        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}