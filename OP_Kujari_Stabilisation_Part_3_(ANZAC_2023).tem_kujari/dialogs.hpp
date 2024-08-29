class dialog_KUJARI_ID_CARD
{
      idd = 0001;
      movingEnable = false;

      class controls
      {
            ////////////////////////////////////////////////////////
            // GUI EDITOR OUTPUT START (by HoodleDoodle, v1.063, #Zedemo)
            ////////////////////////////////////////////////////////

            //picture for card template
            class pictureCardTemplate: RscPicture
            {
            	idc = 1200;
            	text = "images\card_Real_Template.paa";
            	x = 0.360781 * safezoneW + safezoneX;
            	y = 0.258 * safezoneH + safezoneY;
            	w = 0.283594 * safezoneW;
            	h = 0.473 * safezoneH;
            	colorText[] = {1,1,1,1};
            };

            //text for ID registration number field
            class textIdNumber: RscText
            {
            	idc = 1003;
            	text = "01A101A101"; //--- ToDo: Localize;
            	x = 0.5 * safezoneW + safezoneX;
            	y = 0.291 * safezoneH + safezoneY;
            	w = 0.103125 * safezoneW;
            	h = 0.044 * safezoneH;
            	colorText[] = {0.25,0.28,0.26,1};
            	sizeEx = safezoneW / 30;
            };

            //text for date of birth field
            class textDateOfBirth: RscText
            {
            	idc = 1001;
            	text = "01/01/1901"; //--- ToDo: Localize;
            	x = 0.37625 * safezoneW + safezoneX;
            	y = 0.423 * safezoneH + safezoneY;
            	w = 0.061875 * safezoneW;
            	h = 0.033 * safezoneH;
            	colorText[] = {0.25,0.28,0.26,1};
            	sizeEx = safezoneW / 45;
            };

            //text for date registered field
            class textDateRegistered: RscText
            {
            	idc = 1002;
            	text = "01/01/1901"; //--- ToDo: Localize;
            	x = 0.530937 * safezoneW + safezoneX;
            	y = 0.423 * safezoneH + safezoneY;
            	w = 0.0670312 * safezoneW;
            	h = 0.033 * safezoneH;
            	colorText[] = {0.25,0.28,0.26,1};
            	sizeEx = safezoneW / 45;
            };

            //text for full name field
            class textFullName: RscText
            {
            	idc = 1004;
            	text = "NAME, Full"; //--- ToDo: Localize;
            	x = 0.37625 * safezoneW + safezoneX;
            	y = 0.357 * safezoneH + safezoneY;
            	w = 0.257813 * safezoneW;
            	h = 0.045 * safezoneH;
            	colorText[] = {0.25,0.28,0.26,1};
            	sizeEx = safezoneW / 30;
            };

            //text for sex field
            class textSex: RscText
            {
            	idc = 1000;
            	text = "M"; //--- ToDo: Localize;
            	x = 0.484531 * safezoneW + safezoneX;
            	y = 0.423 * safezoneH + safezoneY;
            	w = 0.020625 * safezoneW;
            	h = 0.033 * safezoneH;
            	colorText[] = {0.25,0.28,0.26,1};
            	sizeEx = safezoneW / 45;
            };

            //text for place of birth field
            class textVillageBirth: RscText
            {
            	idc = 1005;
            	text = "BIRTHVILLAGE"; //--- ToDo: Localize;
            	x = 0.37625 * safezoneW + safezoneX;
            	y = 0.489 * safezoneH + safezoneY;
            	w = 0.257813 * safezoneW;
            	h = 0.045 * safezoneH;
            	colorText[] = {0.25,0.28,0.26,1};
            	sizeEx = safezoneW / 30;
            };

            //text for current village field
            class textVillageLive: RscText
            {
            	idc = 1006;
            	text = "LIVEVILLAGE"; //--- ToDo: Localize;
            	x = 0.37625 * safezoneW + safezoneX;
            	y = 0.566 * safezoneH + safezoneY;
            	w = 0.257813 * safezoneW;
            	h = 0.045 * safezoneH;
            	colorText[] = {0.25,0.28,0.26,1};
            	sizeEx = safezoneW / 30;
            };

            //text for notes field
            class textNotes: RscText
            {
            	idc = 1007;
            	text = "Notes"; //--- ToDo: Localize;
            	x = 0.37625 * safezoneW + safezoneX;
            	y = 0.632 * safezoneH + safezoneY;
            	w = 0.252656 * safezoneW;
            	h = 0.077 * safezoneH;
            	colorText[] = {0.25,0.28,0.26,1};
            	sizeEx = safezoneW / 60;
            };

            //button to close dialog
            class buttonCloseCard: RscButton
            {
            	idc = 1600;
            	text = "CLOSE"; //--- ToDo: Localize;
            	x = 0.479375 * safezoneW + safezoneX;
            	y = 0.753 * safezoneH + safezoneY;
            	w = 0.04125 * safezoneW;
            	h = 0.033 * safezoneH;
                  action = "closeDialog 0;"
            };
            ////////////////////////////////////////////////////////
            // GUI EDITOR OUTPUT END
            ////////////////////////////////////////////////////////

      };
};
