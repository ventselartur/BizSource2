/// <summary>
/// This codeunit demonstrates how to use the Environment Information codeunit
/// </summary>
codeunit 55000 "Say Hello"
{
    /// <summary>
    /// This procedure says hello to the user
    /// </summary>
    /// <param name="UserName">The name of the user</param>
    procedure SayHello(UserName: Text)
    var
        EnvironmentInformation: Codeunit "Environment Information";
    begin
        if EnvironmentInformation.IsSaaS() then
            Message('Hello %1 from the cloud!', UserName)
        else
            Message('Hello %1 from the on-premises world!', UserName);
    end;
}