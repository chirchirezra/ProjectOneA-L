tableextension 50003 MyExtension extends Customer
{
    fields
    {
        field(50100; "Student Name"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Student."Admision Number";
        }

        // Add changes to table fields here
    }


}