<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="doctor_module_in_patient_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="TextBox1" EventName="TextChanged" />
            </Triggers>
        </asp:UpdatePanel>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="registration_charges" HeaderText="registration_charges" SortExpression="registration_charges" />
                <asp:BoundField DataField="stay_charges_iccu_nicu" HeaderText="stay_charges_iccu_nicu" SortExpression="stay_charges_iccu_nicu" />
                <asp:BoundField DataField="stay_charges_delux_spl_genral" HeaderText="stay_charges_delux_spl_genral" SortExpression="stay_charges_delux_spl_genral" />
                <asp:BoundField DataField="emergency_charges" HeaderText="emergency_charges" SortExpression="emergency_charges" />
                <asp:BoundField DataField="dressing_charges" HeaderText="dressing_charges" SortExpression="dressing_charges" />
                <asp:BoundField DataField="multipara_monitor_charges" HeaderText="multipara_monitor_charges" SortExpression="multipara_monitor_charges" />
                <asp:BoundField DataField="ecg_charges" HeaderText="ecg_charges" SortExpression="ecg_charges" />
                <asp:BoundField DataField="oxygen_charges" HeaderText="oxygen_charges" SortExpression="oxygen_charges" />
                <asp:BoundField DataField="ventilator_charges" HeaderText="ventilator_charges" SortExpression="ventilator_charges" />
                <asp:BoundField DataField="anaeshtetist_charges" HeaderText="anaeshtetist_charges" SortExpression="anaeshtetist_charges" />
                <asp:BoundField DataField="consultation_charges" HeaderText="consultation_charges" SortExpression="consultation_charges" />
                <asp:BoundField DataField="consultation_charges1" HeaderText="consultation_charges1" SortExpression="consultation_charges1" />
                <asp:BoundField DataField="consultation_charges2" HeaderText="consultation_charges2" SortExpression="consultation_charges2" />
                <asp:BoundField DataField="assistant_charges" HeaderText="assistant_charges" SortExpression="assistant_charges" />
                <asp:BoundField DataField="pathology_charges" HeaderText="pathology_charges" SortExpression="pathology_charges" />
                <asp:BoundField DataField="surgeon_charges" HeaderText="surgeon_charges" SortExpression="surgeon_charges" />
                <asp:BoundField DataField="sonography_charges" HeaderText="sonography_charges" SortExpression="sonography_charges" />
                <asp:BoundField DataField="nebulisation_charges" HeaderText="nebulisation_charges" SortExpression="nebulisation_charges" />
                <asp:BoundField DataField="bedside_sonography_2decho" HeaderText="bedside_sonography_2decho" SortExpression="bedside_sonography_2decho" />
                <asp:BoundField DataField="ryles_tube" HeaderText="ryles_tube" SortExpression="ryles_tube" />
                <asp:BoundField DataField="syringe_pump" HeaderText="syringe_pump" SortExpression="syringe_pump" />
                <asp:BoundField DataField="intubation" HeaderText="intubation" SortExpression="intubation" />
                <asp:BoundField DataField="cathetor" HeaderText="cathetor" SortExpression="cathetor" />
                <asp:BoundField DataField="surgical_instrument_charges" HeaderText="surgical_instrument_charges" SortExpression="surgical_instrument_charges" />
                <asp:BoundField DataField="central_line" HeaderText="central_line" SortExpression="central_line" />
                <asp:BoundField DataField="nursing_charges" HeaderText="nursing_charges" SortExpression="nursing_charges" />
                <asp:BoundField DataField="gastric_lavag" HeaderText="gastric_lavag" SortExpression="gastric_lavag" />
                <asp:BoundField DataField="blood_trancefusion_chargres" HeaderText="blood_trancefusion_chargres" SortExpression="blood_trancefusion_chargres" />
                <asp:BoundField DataField="physio_therapy_stress_test" HeaderText="physio_therapy_stress_test" SortExpression="physio_therapy_stress_test" />
                <asp:BoundField DataField="stay_charges_iccu_nicu_nos" HeaderText="stay_charges_iccu_nicu_nos" SortExpression="stay_charges_iccu_nicu_nos" />
                <asp:BoundField DataField="stay_charges_delux_spl_genral_nos" HeaderText="stay_charges_delux_spl_genral_nos" SortExpression="stay_charges_delux_spl_genral_nos" />
                <asp:BoundField DataField="emergency_charges_nos" HeaderText="emergency_charges_nos" SortExpression="emergency_charges_nos" />
                <asp:BoundField DataField="dressing_charges_nos" HeaderText="dressing_charges_nos" SortExpression="dressing_charges_nos" />
                <asp:BoundField DataField="multipara_monitor_charges_nos" HeaderText="multipara_monitor_charges_nos" SortExpression="multipara_monitor_charges_nos" />
                <asp:BoundField DataField="ecg_charges_nos" HeaderText="ecg_charges_nos" SortExpression="ecg_charges_nos" />
                <asp:BoundField DataField="oxygen_charges_nos" HeaderText="oxygen_charges_nos" SortExpression="oxygen_charges_nos" />
                <asp:BoundField DataField="ventilator_charges_nos" HeaderText="ventilator_charges_nos" SortExpression="ventilator_charges_nos" />
                <asp:BoundField DataField="consultation_charges_nos" HeaderText="consultation_charges_nos" SortExpression="consultation_charges_nos" />
                <asp:BoundField DataField="consultation_charges1_nos" HeaderText="consultation_charges1_nos" SortExpression="consultation_charges1_nos" />
                <asp:BoundField DataField="consultation_charges2_nos" HeaderText="consultation_charges2_nos" SortExpression="consultation_charges2_nos" />
                <asp:BoundField DataField="sonography_charges_nos" HeaderText="sonography_charges_nos" SortExpression="sonography_charges_nos" />
                <asp:BoundField DataField="nebulisation_charges_nos" HeaderText="nebulisation_charges_nos" SortExpression="nebulisation_charges_nos" />
                <asp:BoundField DataField="bedside_sonography_2decho_nos" HeaderText="bedside_sonography_2decho_nos" SortExpression="bedside_sonography_2decho_nos" />
                <asp:BoundField DataField="bedside_portable_x_Ray_x_ray" HeaderText="bedside_portable_x_Ray_x_ray" SortExpression="bedside_portable_x_Ray_x_ray" />
                <asp:BoundField DataField="bedside_portable_x_Ray_x_ray_nos" HeaderText="bedside_portable_x_Ray_x_ray_nos" SortExpression="bedside_portable_x_Ray_x_ray_nos" />
                <asp:BoundField DataField="ryles_tube_nos" HeaderText="ryles_tube_nos" SortExpression="ryles_tube_nos" />
                <asp:BoundField DataField="intubation_nos" HeaderText="intubation_nos" SortExpression="intubation_nos" />
                <asp:BoundField DataField="syringe_pump_nos" HeaderText="syringe_pump_nos" SortExpression="syringe_pump_nos" />
                <asp:BoundField DataField="cathetor_nos" HeaderText="cathetor_nos" SortExpression="cathetor_nos" />
                <asp:BoundField DataField="central_line_nos" HeaderText="central_line_nos" SortExpression="central_line_nos" />
                <asp:BoundField DataField="gastric_lavag_nos" HeaderText="gastric_lavag_nos" SortExpression="gastric_lavag_nos" />
                <asp:BoundField DataField="blood_trancefusion_chargres_nos" HeaderText="blood_trancefusion_chargres_nos" SortExpression="blood_trancefusion_chargres_nos" />
                <asp:BoundField DataField="physio_therapy_stress_test_nos" HeaderText="physio_therapy_stress_test_nos" SortExpression="physio_therapy_stress_test_nos" />
                <asp:BoundField DataField="medicine_nos" HeaderText="medicine_nos" SortExpression="medicine_nos" />
                <asp:BoundField DataField="special_visit" HeaderText="special_visit" SortExpression="special_visit" />
                <asp:BoundField DataField="special_visit_nos" HeaderText="special_visit_nos" SortExpression="special_visit_nos" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:palmConnectionString %>" SelectCommand="SELECT [registration_charges], [stay_charges_iccu_nicu], [stay_charges_delux_spl_genral], [emergency_charges], [dressing_charges], [multipara_monitor_charges], [ecg_charges], [oxygen_charges], [ventilator_charges], [anaeshtetist_charges], [consultation_charges], [consultation_charges1], [consultation_charges2], [assistant_charges], [pathology_charges], [surgeon_charges], [sonography_charges], [nebulisation_charges], [bedside_sonography_2decho], [ryles_tube], [syringe_pump], [intubation], [cathetor], [surgical_instrument_charges], [central_line], [nursing_charges], [gastric_lavag], [blood_trancefusion_chargres], [physio_therapy_stress_test], [stay_charges_iccu_nicu_nos], [stay_charges_delux_spl_genral_nos], [emergency_charges_nos], [dressing_charges_nos], [multipara_monitor_charges_nos], [ecg_charges_nos], [oxygen_charges_nos], [ventilator_charges_nos], [consultation_charges_nos], [consultation_charges1_nos], [consultation_charges2_nos], [sonography_charges_nos], [nebulisation_charges_nos], [bedside_sonography_2decho_nos], [bedside_portable_x_Ray_x_ray], [bedside_portable_x_Ray_x_ray_nos], [ryles_tube_nos], [intubation_nos], [syringe_pump_nos], [cathetor_nos], [central_line_nos], [gastric_lavag_nos], [blood_trancefusion_chargres_nos], [physio_therapy_stress_test_nos], [medicine_nos], [special_visit], [special_visit_nos] FROM [final_bill] WHERE ([pateint_code] = @pateint_code)">
            <SelectParameters>
                <asp:SessionParameter Name="pateint_code" SessionField="pateint_code" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    </form>
</body>
</html>
