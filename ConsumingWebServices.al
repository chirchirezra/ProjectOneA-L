codeunit 50007 GetRandomUser
{
    procedure GetUser(Number: Integer)
    var
        VarHttpClient: HttpClient;
        varResponseMessage: HttpResponseMessage;
        VarResponseText: Text;
        JsonObj: JsonObject;
        VarUrl: Text;
        FirstName: Text;
        LastName: Text;
        varJsonToken: JsonToken;
        varArray: JsonArray;
        RandomUser: Record "Random Users";
        UserNo: Integer;
    begin
        VarUrl := 'https://randomuser.me/api/';
        if VarHttpClient.Get(VarUrl, varResponseMessage) then begin
            varResponseMessage.Content.ReadAs(VarResponseText);
            JsonObj.ReadFrom(VarResponseText);
            varArray := GetUserDetails(JsonObj, 'results').AsArray();
            if varArray.Get(0, varJsonToken) then begin
                UserNo := Number + 10;
                RandomUser.Init();
                RandomUser."No." := UserNo;
                RandomUser.Gender := FnReturnGender(GetUserDetails(varJsonToken.AsObject(), 'gender').AsValue().AsText());
                RandomUser.Email := GetUserDetails(varJsonToken.AsObject(), 'email').AsValue().AsText();
                RandomUser.Phone := GetUserDetails(varJsonToken.AsObject(), 'phone').AsValue().AsText();
                JsonObj := GetUserDetails(varJsonToken.AsObject(), 'name').AsObject();
                RandomUser."First Name" := GetUserDetails(JsonObj, 'first').AsValue().AsText();
                RandomUser."Last Name" := GetUserDetails(JsonObj, 'last').AsValue().AsText();
                RandomUser.Title := GetUserDetails(JsonObj, 'title').AsValue().AsText();
                JsonObj := GetUserDetails(varJsonToken.AsObject(), 'location').AsObject();
                RandomUser.City := GetUserDetails(JsonObj, 'city').AsValue().AsText();
                RandomUser.State := GetUserDetails(JsonObj, 'state').AsValue().AsText();
                RandomUser.Country := GetUserDetails(JsonObj, 'country').AsValue().AsText();
                JsonObj := GetUserDetails(varJsonToken.AsObject(), 'login').AsObject();
                RandomUser."User Name" := GetUserDetails(JsonObj, 'username').AsValue().AsText();
                RandomUser.Password := GetUserDetails(JsonObj, 'password').AsValue().AsText();
                JsonObj := GetUserDetails(varJsonToken.AsObject(), 'registered').AsObject();
                RandomUser."Registration Date" := GetUserDetails(JsonObj, 'date').AsValue().AsDateTime();
                JsonObj := GetUserDetails(varJsonToken.AsObject(), 'picture').AsObject();
                RandomUser.Picture := GetUserDetails(JsonObj, 'medium').AsValue().AsText();
                RandomUser.Insert()

            end;
            //Message(FORMAT(varArray.Get(0, varJsonToken)));

        end;

    end;

    local procedure GetUserDetails(JSONObj: JsonObject; JsonKey: Text): JsonToken
    var
        UserJSONToken: JsonToken;
    begin
        if JSONObj.Get(JsonKey, UserJSONToken) then
            exit(UserJSONToken);
    end;

    local procedure FnReturnGender(GenderValue: Text): Option
    var
        Gender: Option Male,Female,Other;
    begin
        if GenderValue = 'male' then
            exit(Gender::Male)
        else
            if GenderValue = 'female' then
                exit(Gender::Female)
            else
                exit(Gender::Other)

    end;

}