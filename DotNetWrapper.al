codeunit 50006 DotNetWrappers
{
    procedure ListNames()
    var
        myDict: Dictionary of [Text, Text];
        MyCustomers: List of [Dictionary of [Text, Text]];
        CustomerDictionary: Dictionary of [Text, Text];
    begin
        // MyCustomers.Insert(2, myDict.Set('', ''));
        // // MyCustomers.Add('Faith');
        // // MyCustomers.Add('John');
        // // MyCustomers.Add('Loila');
        // // MyCustomers.Add('Mercy');
        // // MyCustomers.Add('Caren');

        // foreach CustomerDictionary in MyCustomers do
        //     //MESSAGE(CustomerName);
        //     CustomerDictionary.


    end;

    procedure FindLetterCountInName(CustomerName: Text; Character: Char)
    var
        MyDictionary: Dictionary of [Char, Integer];
        i: Integer;
        c: Integer;
    begin
        for i := 1 to Strlen(CustomerName) do begin
            if MyDictionary.Get(CustomerName[i], c) then
                MyDictionary.Set(CustomerName[i], c + 1)
            else
                MyDictionary.Set(CustomerName[i], 1);

        end;
        if MyDictionary.Get(Character, c) then
            Message('The character %1 appears %2 times in the %3', Character, Format(c), CustomerName);
    end;

}