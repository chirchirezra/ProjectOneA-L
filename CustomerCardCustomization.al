profile MyProfile
{
    Caption = 'My Customizations';
    RoleCenter = "Sales Manager Role Center";
    Customizations = CustomizedCustomerList;
}

pagecustomization CustomizedCustomerList customizes "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        modify("Responsibility Center")
        {
            Visible = false;
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    //Variables, procedures and triggers are not allowed on Page Customizations
}