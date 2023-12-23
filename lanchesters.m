function lanchesters()

%pre-fight stats
    fig = uifigure('Name', 'Lanchesters Laws', 'Position', [100, 100, 700, 700]);

%army A sliders
  %number units
    AnumUnits = uislider(fig, 'Position', [200, 550, 120, 15], 'Limits', [0, 1000], 'Value', 500, 'ValueChangedFcn', @update_vals);
    uilabel(fig, 'Position', [0, 540, 100, 15], 'Text', 'Army A Number:');
    AnumUnitsLabel = uilabel(fig, 'Position', [100, 540, 100, 15], 'Text',  num2str(AnumUnits.Value));
  %health
    Ahealth = uislider(fig, 'Position', [200, 500, 120, 15], 'Limits', [0, 500], 'Value', 100,'ValueChangedFcn', @update_vals);
    uilabel(fig, 'Position', [0, 490, 100, 15], 'Text', 'Army A Health:');
    AhealthLabel = uilabel(fig, 'Position', [100, 490, 100, 15], 'Text',  num2str(Ahealth.Value));
  %damage
    Adamage = uislider(fig, 'Position', [200, 450, 120, 15], 'Limits', [0, 500], 'Value', 2,'ValueChangedFcn', @update_vals);
    uilabel(fig, 'Position', [0, 440, 100, 15], 'Text', 'Army A Damage:');
    AdamageLabel = uilabel(fig, 'Position', [100, 440, 100, 15], 'Text',  num2str(Adamage.Value));
  %range
    Arange = uislider(fig, 'Position', [200, 400, 120, 15], 'Limits', [0, 10], 'Value', 1,'ValueChangedFcn', @update_vals);
    uilabel(fig, 'Position', [0, 390, 100, 15], 'Text', 'Army A Range:');
    ArangeLabel = uilabel(fig, 'Position', [100, 390, 100, 15], 'Text',  num2str(Arange.Value));
  %army width
    Awidth = uislider(fig, 'Position', [200, 350, 120, 15], 'Limits', [0, 1000], 'Value', 1000,'ValueChangedFcn', @update_vals);
    uilabel(fig, 'Position', [0, 340, 100, 15], 'Text', 'Army A Max Width:');
    AwidthLabel = uilabel(fig, 'Position', [100, 340, 100, 15], 'Text',  num2str(Awidth.Value));
   
%army B sliders
  %number units
    BnumUnits = uislider(fig, 'Position', [550, 550, 120, 15], 'Limits', [0, 1000], 'Value', 100, 'ValueChangedFcn', @update_vals);
    uilabel(fig, 'Position', [350, 540, 100, 15], 'Text', 'Army B Number:');
    BnumUnitsLabel = uilabel(fig, 'Position', [450, 540, 100, 15], 'Text',  num2str(BnumUnits.Value));
  %health
    Bhealth = uislider(fig, 'Position', [550, 500, 120, 15], 'Limits', [0, 500], 'Value', 100,'ValueChangedFcn', @update_vals);
    uilabel(fig, 'Position', [350, 490, 100, 15], 'Text', 'Army B Health:');
    BhealthLabel = uilabel(fig, 'Position', [450, 490, 100, 15], 'Text',  num2str(Bhealth.Value));
  %damage
    Bdamage = uislider(fig, 'Position', [550, 450, 120, 15], 'Limits', [0, 100], 'Value', 55,'ValueChangedFcn', @update_vals);
    uilabel(fig, 'Position', [350, 440, 100, 15], 'Text', 'Army B Damage:');
    BdamageLabel = uilabel(fig, 'Position', [450, 440, 100, 15], 'Text',  num2str(Bdamage.Value));
  %range
    Brange = uislider(fig, 'Position', [550, 400, 120, 15], 'Limits', [0, 5], 'Value', 1,'ValueChangedFcn', @update_vals);
    uilabel(fig, 'Position', [350, 390, 100, 15], 'Text', 'Army B Range:');
    BrangeLabel = uilabel(fig, 'Position', [450, 390, 100, 15], 'Text',  num2str(Brange.Value));
  %army width
    Bwidth = uislider(fig, 'Position', [550, 350, 120, 15], 'Limits', [0, 1000], 'Value', 1000,'ValueChangedFcn', @update_vals);
    uilabel(fig, 'Position', [350, 340, 100, 15], 'Text', 'Army B Max Width:');
    BwidthLabel = uilabel(fig, 'Position', [450, 340, 100, 15], 'Text',  num2str(Bwidth.Value));
 
%global
     %bottleneck width
    bottleneckWidth = uislider(fig, 'Position', [200, 250, 120, 15], 'Limits', [0, 1000], 'Value', 1000,'ValueChangedFcn', @update_vals);
    uilabel(fig, 'Position', [0, 240, 100, 15], 'Text', 'Bottleneck Width:');
    bottleneckWidthLabel = uilabel(fig, 'Position', [100, 240, 100, 15], 'Text',  num2str(bottleneckWidth.Value));
   
    function update_vals(~, ~)
    %army A vals
        AnumUnitsLabel.Text = num2str(round(AnumUnits.Value));
        AhealthLabel.Text = num2str(round(Ahealth.Value));
        AdamageLabel.Text = num2str(round(Adamage.Value));
        ArangeLabel.Text = num2str(round(Arange.Value));
        AwidthLabel.Text = num2str(round(Awidth.Value));

    %army 1 vals
        BnumUnitsLabel.Text = num2str(round(BnumUnits.Value));
        BhealthLabel.Text = num2str(round(Bhealth.Value));
        BdamageLabel.Text = num2str(round(Bdamage.Value));
        BrangeLabel.Text = num2str(round(Brange.Value));
        BwidthLabel.Text = num2str(round(Bwidth.Value));
        
    %global
        bottleneckWidthLabel.Text = num2str(round(bottleneckWidth.Value));
    end

    %starts sim
    function start_sim(~, ~)

        %init values
        AN = AnumUnits.Value;
        AH = Ahealth.Value;
        AD = Adamage.Value;
        AR = Arange.Value;
        AW = Awidth.Value;

        BN = BnumUnits.Value;
        BH = Bhealth.Value;
        BD = Bdamage.Value;
        BR = Brange.Value;
        BW = Bwidth.Value;
      
        BNW = bottleneckWidth.Value;

        %limiting widths
        A_lim_width = min(AW, BNW);
        B_lim_width = min(BW, BNW);

        army_A = [] * 100;
        army_B = [] * 100;
        army_A(1) = AN;
        army_B(1) = BN;

        %need to ensure damage can be done
        while (AN > 1) && (BN > 1) 

          %calculate number of army attacking
            army_A_attack_width = min(AN, A_lim_width);
            army_A_attack_depth = AN/army_A_attack_width;
            army_A_attack_force = army_A_attack_width * min(army_A_attack_depth, AR);

            army_B_attack_width = min(BN, B_lim_width);
            army_B_attack_depth = BN/army_B_attack_width;
            army_B_attack_force = army_B_attack_width * min(army_B_attack_depth, BR);

            %calculate potential damage
            army_A_damage = army_A_attack_force * AD;
            army_B_damage = army_B_attack_force * BD;
            
            %army losses
            army_B_losses = round(min(army_B_attack_width*AR,army_A_damage/BH));
            army_A_losses = round(min(army_A_attack_width*BR,army_B_damage/AH));

            %prevent stalemate when unable to cause further losses
            if (army_A_losses == 0) && (army_B_losses == 0)
                break;
            end

            AN = max(AN - army_A_losses, 0);
            BN = max(BN - army_B_losses, 0);

            %army numbers over time
            army_A = [army_A, AN];
            army_B = [army_B, BN];
        end

        %plot
        figure;
        plot(army_A);
        hold on;
        plot(army_B);
        xlabel('Battles');
        ylabel('Army Count');
        title('Battle Sim');
        legend('Army A', 'Army B');
        grid on;
    end

    %default values
    function default_vals(~, ~)
        AnumUnits.Value = 200;
        Ahealth.Value = 100;
        Adamage.Value = 2;
        Arange.Value = 1;
        Awidth.Value = 1000;

        BnumUnits.Value = 200;
        Bhealth.Value = 100;
        Bdamage.Value = 2;
        Brange.Value = 1;
        Bwidth.Value = 1000;
      
        bottleneckWidth.Value = 1000;
        update_vals();
    end

    %example 1 - importance of numbers
    function example_1(~, ~)
        default_vals();
        AnumUnits.Value = 200;
        BnumUnits.Value = 190;
        update_vals();
    end

    %example 2 - importance of range
    function example_2(~, ~)
        default_vals();
        Arange.Value = 2;
        Brange.Value = 1;
        bottleneckWidth.Value = 100;
        update_vals();
    end

    %example 3 - surface area
    function example_3(~, ~)
        default_vals();
        Awidth.Value = 200;
        Bwidth.Value = 50;
        update_vals();
    end

    %example 4 - death march
    function example_4(~, ~)
        default_vals();
        AnumUnits.Value = 1000;
        BnumUnits.Value = 1000;
        Bwidth.Value = 50;
        update_vals();
    end

    %example 5 - tanks
    function example_5(~, ~)
        default_vals();
        AnumUnits.Value = 25;
        BnumUnits.Value = 1000;
        Adamage.Value = 500;
        Ahealth.Value = 500;
        Arange.Value = 10;
        Awidth.Value = 1;
        update_vals();
    end

    function random(~, ~)
        AnumUnits.Value = randi([0, 1000]);
        Ahealth.Value = randi([0, 500]);
        Adamage.Value = randi([0, 500]);
        Arange.Value = randi([0, 10]);
        Awidth.Value = randi([0, 1000]);

        BnumUnits.Value = randi([0, 1000]);
        Bhealth.Value = randi([0, 500]);
        Bdamage.Value = randi([0, 500]);
        Brange.Value = randi([0, 10]);
        Bwidth.Value = randi([0, 1000]);
      
        bottleneckWidth.Value = randi([0, 1000]);
        update_vals();
    end

    %default
    uibutton(fig, 'Position', [350, 180, 120, 30], 'Text', 'Equal Forces', 'ButtonPushedFcn', @default_vals);
    %Random
    uibutton(fig, 'Position', [350, 150, 120, 30], 'Text', 'Random', 'ButtonPushedFcn', @random);
    %example 1
    uibutton(fig, 'Position', [50, 60, 120, 30], 'Text', 'Numbers Advantage', 'ButtonPushedFcn', @example_1);
    %example 2
    uibutton(fig, 'Position', [50, 90, 120, 30], 'Text', 'Ranged Support', 'ButtonPushedFcn', @example_2);
    %example 3
    uibutton(fig, 'Position', [50, 120, 120, 30], 'Text', 'Surface Area', 'ButtonPushedFcn', @example_3);
    %example 4
    uibutton(fig, 'Position', [50, 150, 120, 30], 'Text', 'Death March', 'ButtonPushedFcn', @example_4);
    %example 5
    uibutton(fig, 'Position', [50, 180, 120, 30], 'Text', 'Tank', 'ButtonPushedFcn', @example_5);
    %start button
    uibutton(fig, 'Position', [350, 60, 120, 30], 'Text', 'Start', 'ButtonPushedFcn', @start_sim);
end