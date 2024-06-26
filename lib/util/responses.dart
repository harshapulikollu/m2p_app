class Responses {
  static final formDataJson = {
    "payload": [
      {"id": 89, "name": "agencyType", "value": "DSA"},
      {"id": 90, "name": "agencyName", "value": "OM Financial Services"},
      {"id": 91, "name": "sourcedByExternal", "value": "csdf"},
      {"id": 92, "name": "agencyCode", "value": "CP - 1106"},
      {"id": 93, "name": "sourcedByInternal", "value": "sdvsf"},
      {"id": 94, "name": "agencyEmail", "value": "N/A"},
      {
        "id": 95,
        "name": "agencyAddress",
        "value":
            "Shop No -7, Ground floor, Shiv Kripa Bldg, Block Sector, opp Padmavati Nagar Road, Bhayander (W), thane - 401101"
      },
      {"id": 96, "name": "agencyCreationDate", "value": "06/09/17"},
      {"id": 97, "name": "agencyActive", "value": "TRUE"},
      {"id": 98, "name": "agencyUserName", "value": "scdvsf"},
      {"id": 99, "name": "agencyUserEmail", "value": "cdvf"},
      {"id": 100, "name": "agencyUserLocation", "value": "Mumbai"},
      {"id": 101, "name": "agencyUserCreationDate", "value": "2024-05-21"},
      {"id": 102, "name": "agencyUserActive", "value": "TRUE"},
      {"id": 103, "name": "agencyMobileNumber", "value": "8956117488"}
    ],
    "resourceId": 44
  };

  static final formTemplateJson = {
    "formKey": "dsa-form",
    "formName": "DSA Form",
    "description": "DSA Form",
    "entityType": "client",
    "isBaseTable": false,
    "multipleAllowed": false,
    "parameters": [
      {
        "id": 89,
        "name": "agencyType",
        "displayName": "Agency Type",
        "dataType": "Selection",
        "possibleValues": ["DSA", "Connector"],
        "isMandatory": true,
        "isEditable": true,
        "isHidden": false,
        "isAdditionalField": true,
        "displayOrder": 1,
        "length": 0,
        "categoryValue": "Agency Details",
        "category": "Agency Details",
        "defaultSelection": "DSA"
      },
      {
        "id": 90,
        "name": "agencyName",
        "displayName": "Agency Name",
        "dataType": "ConditionalSelection",
        "possibleValuesMap":
            "{\n  \"dependantFieldName\": \"agencyType\",\n  \"value\": {\n    \"DSA\": [\n      \"SKY HIGH FINANCESOLUTIONS\",\n      \"Urban Money Private Limited (Square Capital)\",\n      \"Ruloans Distributionservices pvt ltd\",\n      \"Finwizz ManagementConsultants Pvt Ltd\",\n      \"Andromeda Sales &Distribution pvt ltd\",\n      \"OM Financial Services\",\n      \"Fineoteric Consulting Pvt .Ltd (Finkart)\",\n      \"RUPEE BOSS\",\n      \"Royal Finserv Securities\",\n      \"Ratnanidhi Corporation\",\n      \"Book My Loan\",\n      \"Royal Finserv Consultants Pvt Ltd\",\n      \"Opendoors Fintech Private Limited (Namaste Credit)\",\n      \"Cateye Consultancy Services Pvt Ltd\",\n      \"Planut Envestment Solutions Pvt. Ltd.\",\n      \"Anvi Associates\",\n      \"JBJ Associates\",\n      \"My Mudra Fincorp Pvt Ltd\",\n      \"Chase Fly Fincom Pvt Ltd\",\n      \"SBJ BPO SERVICES LIMITED\",\n      \"OSM Advisor\",\n      \"AADiFidelis solutions pvt ltd\",\n      \"DREAM INC.\",\n      \"Jai enterprises\",\n      \"STAR Powerz Digital Techonologies Pvt Ltd\",\n      \"MHP Services\",\n      \"SDV Finconsultant LLP\",\n      \"Niyogin Fintech Limited\",\n      \"RAAJ KHOSLA & CO. PVT. LTD ( My Money Mantra / RKPL)\",\n      \"Nafisa Ansari & Co (cresent)\",\n      \"Trueway Financial services Pvt Ltd\",\n      \"Divyanshi Capital Insurance Marketing Pvt Ltd\",\n      \"A Squarian Consultants Pvt Ltd\",\n      \"Parker's consulting & Ventures Pvt Ltd\",\n      \"Truewin fintech private limited\",\n      \"Eklingi Finance Solutions Pvt Ltd\",\n      \"SIIA advisory Pvt Ltd\",\n      \"Quick Paisa Solution Private limited\",\n      \"Digix Fincap India Pvt Ltd\",\n      \"Vikram Shani Enterprises\",\n      \"Generation Next BPO Services\",\n      \"Arya Consultancy\",\n      \"Prostar Finserve Pvt Ltd\",\n      \"Capital Copia\",\n      \"Pragati Wealth\",\n      \"PPV Advisor LLP\",\n      \"Realturity Business Advisory Private Limited\",\n      \"SAARATHI FINBIZ PVT LTD\",\n      \"HEXAFIN CONSULTANCY PRIVATE LIMITED\",\n      \"ALPANA AGGARWAL\",\n      \"RAHUL\",\n      \"RINKI\",\n      \"USHA DHANANJAY HAJARE\",\n      \"DEEPAK KUMAR SHIVANI\",\n      \"RAHUL KR FIN\",\n      \"THIRD DIMENSION ADVISORY LLP\",\n      \"PAWAN KUMAR\",\n      \"AADI TRADEMART PRIVATE LIMITED\",\n      \"RAJPUT Enterprises\",\n      \"RAVIKASH FINANCIAL SERVICES PRIVATE LIMITED\",\n      \"R.B ENTERPRISES\",\n      \"UNICUS FINTECH SOLUTIONS PRIVATE LIMITED\",\n      \"APEX FINMART SERVICES\",\n      \"Impetus Adcon Private limited\",\n      \"DHAN MOMENTUM ADVISORS PVT.LTD.\",\n      \"LOAN NETWORK TECHNOLOGIES PRIVATE LIMUTED\",\n      \"FUNDTRANDZ INDIA PRIVATE LIMITED\"\n    ],\n    \"Connector\": [\n      \"Kumari Puja\",\n      \"Prashant\",\n      \"Rakesh Kumar\",\n      \"Shazeb Ali\",\n      \"Sunil Kumar\",\n      \"Money Matters\",\n      \"Aradhna\",\n      \"Vikram Dewan\",\n      \"Rajesh Kumar\",\n      \"Shailesh Pandey\",\n      \"Sushil G Jadhav\",\n      \"Lala Ram\"\n    ]\n  }\n}",
        "isMandatory": true,
        "isEditable": true,
        "isHidden": false,
        "isAdditionalField": true,
        "displayOrder": 2,
        "length": 0,
        "categoryValue": "Agency Details",
        "category": "Agency Details"
      },
      {
        "id": 91,
        "name": "sourcedByExternal",
        "displayName": "Sourced By (External RM)",
        "dataType": "String",
        "isMandatory": true,
        "isEditable": true,
        "isHidden": false,
        "isAdditionalField": true,
        "displayOrder": 3,
        "length": 0,
        "categoryValue": "Agency Details",
        "category": "Agency Details"
      },
      {
        "id": 92,
        "name": "agencyCode",
        "displayName": "Agency Code",
        "dataType": "String",
        "isMandatory": true,
        "isEditable": true,
        "isHidden": false,
        "isAdditionalField": true,
        "valueExpression":
            "(#agencyName == \"SKY HIGH FINANCESOLUTIONS\") ? \"CP - 1013\" : \n(#agencyName == \"Urban Money Private Limited (Square Capital)\") ? \"CP - 1026\" : \n(#agencyName == \"Ruloans Distributionservices pvt ltd\") ? \"CP - 1079\" : \n(#agencyName == \"Finwizz ManagementConsultants Pvt Ltd\") ? \"CP - 1094\" : \n(#agencyName == \"Andromeda Sales &Distribution pvt ltd\") ? \"CP - 1095\" : \n(#agencyName == \"OM Financial Services\") ? \"CP - 1106\" : \n(#agencyName == \"Fineoteric Consulting Pvt .Ltd (Finkart)\") ? \"CP - 1110\" : \n(#agencyName == \"RUPEE BOSS\") ? \"CP - 1149\" : \n(#agencyName == \"Royal Finserv Securities\") ? \"CP - 1160\" : \n(#agencyName == \"Ratnanidhi Corporation\") ? \"CP - 1183\" : \n(#agencyName == \"Book My Loan\") ? \"CP - 1191\" : \n(#agencyName == \"Royal Finserv Consultants Pvt Ltd\") ? \"CP - 1203\" : \n(#agencyName == \"Opendoors Fintech Private Limited (Namaste Credit)\") ? \"CP - 1209\" : \n(#agencyName == \"Cateye Consultancy Services Pvt Ltd\") ? \"CP-1240\" : \n(#agencyName == \"Planut Envestment Solutions Pvt. Ltd.\") ? \"CP-1245\" : \n(#agencyName == \"Anvi Associates\") ? \"CP-1247\" : \n(#agencyName == \"JBJ Associates\") ? \"CP-1248\" : \n(#agencyName == \"My Mudra Fincorp Pvt Ltd\") ? \"CP-1253\" : \n(#agencyName == \"Chase Fly Fincom Pvt Ltd\") ? \"CP-1257\" : \n(#agencyName == \"SBJ BPO SERVICES LIMITED\") ? \"CP-1265\" : \n(#agencyName == \"OSM Advisor\") ? \"CP-1266\" : \n(#agencyName == \"AADiFidelis solutions pvt ltd\") ? \"CP-1268\" : \n(#agencyName == \"DREAM INC.\") ? \"CP-1271\" : \n(#agencyName == \"Jai enterprises\") ? \"CP-1272\" : \n(#agencyName == \"STAR Powerz Digital Techonologies Pvt Ltd\") ? \"CP-1296\" : \n(#agencyName == \"MHP Services\") ? \"CP-1304\" : \n(#agencyName == \"SDV Finconsultant LLP\") ? \"CP-1307\" : \n(#agencyName == \"Niyogin Fintech Limited\") ? \"CP-1308\" : \n(#agencyName == \"RAAJ KHOSLA & CO. PVT. LTD ( My Money Mantra / RKPL)\") ? \"CP-1313\" : \n(#agencyName == \"Nafisa Ansari & Co (cresent)\") ? \"CP-1315\" : \n(#agencyName == \"Trueway Financial services Pvt Ltd\") ? \"CP-1318\" : \n(#agencyName == \"Divyanshi Capital Insurance Marketing Pvt Ltd\") ? \"CP-1329\" : \n(#agencyName == \"A Squarian Consultants Pvt Ltd\") ? \"CP-1341\" : \n(#agencyName == \"Parker's consulting & Ventures Pvt Ltd\") ? \"CP-1344\" : \n(#agencyName == \"Truewin fintech private limited\") ? \"CP-1347\" : \n(#agencyName == \"Kumari Puja\") ? \"RP-038\" : \n(#agencyName == \"Eklingi Finance Solutions Pvt Ltd\") ? \"CP-1362\" : \n(#agencyName == \"Prashant\") ? \"RP-042\" : \n(#agencyName == \"Rakesh Kumar\") ? \"RP-043\" : \n(#agencyName == \"Shazeb Ali\") ? \"RP-044\" : \n(#agencyName == \"SIIA advisory Pvt Ltd\") ? \"CP-1370\" : \n(#agencyName == \"Sunil Kumar\") ? \"RP-045\" : \n(#agencyName == \"Money Matters\") ? \"RP-046\" : \n(#agencyName == \"Aradhna\") ? \"RP-047\" : \n(#agencyName == \"Quick Paisa Solution Private limited\") ? \"CP-1372\" : \n(#agencyName == \"Digix Fincap India Pvt Ltd\") ? \"CP-1374\" : \n(#agencyName == \"Vikram Shani Enterprises\") ? \"CP-1375\" : \n(#agencyName == \"Vikram Dewan\") ? \"RP-048\" : \n(#agencyName == \"Rajesh Kumar\") ? \"RP-049\" : \n(#agencyName == \"Shailesh Pandey\") ? \"RP-050\" : \n(#agencyName == \"Sushil G Jadhav\") ? \"RP-051\" : \n(#agencyName == \"Generation Next BPO Services\") ? \"CP-1378\" : \n(#agencyName == \"Arya Consultancy\") ? \"CP-1377\" : \n(#agencyName == \"Prostar Finserve Pvt Ltd\") ? \"CP-1378\" : \n(#agencyName == \"Capital Copia\") ? \"CP-1379\" : \n(#agencyName == \"Pragati Wealth\") ? \"CP-1380\" : \n(#agencyName == \"PPV Advisor LLP\") ? \"CP-1381\" : \n(#agencyName == \"Lala Ram\") ? \"RP-052\" : \n(#agencyName == \"Realturity Business Advisory Private Limited\") ? \"CP-1383\" : \n(#agencyName == \"SAARATHI FINBIZ PVT LTD\") ? \"CP-1384\" : \n(#agencyName == \"HEXAFIN CONSULTANCY PRIVATE LIMITED\") ? \"CP-1386\" : \n(#agencyName == \"ALPANA AGGARWAL\") ? \"CP-1387\" : \n(#agencyName == \"RAHUL\") ? \"CP-1388\" : \n(#agencyName == \"RINKI\") ? \"CP-1389\" : \n(#agencyName == \"USHA DHANANJAY HAJARE\") ? \"CP-1390\" : \n(#agencyName == \"DEEPAK KUMAR SHIVANI\") ? \"CP-1391\" : \n(#agencyName == \"RAHUL KR FIN\") ? \"CP-1393\" : \n(#agencyName == \"THIRD DIMENSION ADVISORY LLP\") ? \"CP-1394\" : \n(#agencyName == \"PAWAN KUMAR\") ? \"CP-1396\" : \n(#agencyName == \"AADI TRADEMART PRIVATE LIMITED\") ? \"CP-1397\" : \n(#agencyName == \"RAJPUT Enterprises\") ? \"CP-1398\" : \n(#agencyName == \"RAVIKASH FINANCIAL SERVICES PRIVATE LIMITED\") ? \"CP-1400\" : \n(#agencyName == \"R.B ENTERPRISES\") ? \"CP-1401\" : \n(#agencyName == \"UNICUS FINTECH SOLUTIONS PRIVATE LIMITED\") ? \"CP-1402\" : \n(#agencyName == \"APEX FINMART SERVICES\") ? \"CP-1403\" : \n(#agencyName == \"Impetus Adcon Private limited\") ? \"CP-1404\" : \n(#agencyName == \"DHAN MOMENTUM ADVISORS PVT.LTD.\") ? \"CP-1405\" : \n(#agencyName == \"LOAN NETWORK TECHNOLOGIES PRIVATE LIMUTED\") ? \"CP-1406\" : \n(#agencyName == \"FUNDTRANDZ INDIA PRIVATE LIMITED\") ? \"CP-1408\" : \nnull",
        "displayOrder": 4,
        "length": 0,
        "categoryValue": "Agency Details",
        "category": "Agency Details"
      },
      {
        "id": 93,
        "name": "sourcedByInternal",
        "displayName": "Sourced By (Internal RM)",
        "dataType": "String",
        "isMandatory": true,
        "isEditable": true,
        "isHidden": false,
        "isAdditionalField": true,
        "displayOrder": 4,
        "length": 0,
        "categoryValue": "Agency Details",
        "category": "Agency Details"
      },
      {
        "id": 94,
        "name": "agencyEmail",
        "displayName": "Agency Email Address",
        "dataType": "String",
        "isMandatory": true,
        "isEditable": true,
        "isHidden": false,
        "isAdditionalField": true,
        "valueExpression":
            "(#agencyName == \"SKY HIGH FINANCESOLUTIONS\") ? \"skyhighfinance@gmail.com\" : \n(#agencyName == \"Urban Money Private Limited (Square Capital)\") ? \"santosh.choudhary@squareconnect.in\" : \n(#agencyName == \"Ruloans Distributionservices pvt ltd\") ? \"info@ruloans.com\" : \n(#agencyName == \"Finwizz ManagementConsultants Pvt Ltd\") ? \"N/A\" : \n(#agencyName == \"Andromeda Sales &Distribution pvt ltd\") ? \"N/A\" : \n(#agencyName == \"OM Financial Services\") ? \"N/A\" : \n(#agencyName == \"Fineoteric Consulting Pvt .Ltd (Finkart)\") ? \"N/A\" : \n(#agencyName == \"RUPEE BOSS\") ? \"N/A\" : \n(#agencyName == \"Royal Finserv Securities\") ? \"N/A\" : \n(#agencyName == \"Ratnanidhi Corporation\") ? \"ratnanidhic@gmail.com\" : \n(#agencyName == \"Book My Loan\") ? \"bookmyloan1@gmail.com\" : \n(#agencyName == \"Royal Finserv Consultants Pvt Ltd\") ? \"royal.finserv@gmail.com\" : \n(#agencyName == \"Opendoors Fintech Private Limited (Namaste Credit)\") ? \"danny.dsouza@namastecredit.com\" : \n(#agencyName == \"Cateye Consultancy Services Pvt Ltd\") ? \"tony.khan@cateye.in\" : \n(#agencyName == \"Planut Envestment Solutions Pvt. Ltd.\") ? \"vsharma00786@gmail.com\" : \n(#agencyName == \"Anvi Associates\") ? \"pearl.credit@gmail.com\" : \n(#agencyName == \"JBJ Associates\") ? \"jbjassociates02@gmail.com\" : \n(#agencyName == \"My Mudra Fincorp Pvt Ltd\") ? \"mudra.loan@gmail.com\" : \n(#agencyName == \"Chase Fly Fincom Pvt Ltd\") ? \"amitarorain@hotmail.com\" : \n(#agencyName == \"SBJ BPO SERVICES LIMITED\") ? \"sbjbposervices@gmail.com \" : \n(#agencyName == \"OSM Advisor\") ? \"accounts@osmcapital.com\" : \n(#agencyName == \"AADiFidelis solutions pvt ltd\") ? \"gaurav.bankfin@gmail.com\" : \n(#agencyName == \"DREAM INC.\") ? \"dream.inc27@gmail.com\" : \n(#agencyName == \"Jai enterprises\") ? \"Adnanwarsi.jaisidhi@gmail.com\" : \n(#agencyName == \"STAR Powerz Digital Techonologies Pvt Ltd\") ? \"shekhar@stardigi.in, kiran@starpowerz.com\" : \n(#agencyName == \"MHP Services\") ? \"hiren.parmar@financemela.com\" : \n(#agencyName == \"SDV Finconsultant LLP\") ? \"Manojvijay66@gmail.com\" : \n(#agencyName == \"Niyogin Fintech Limited\") ? \"kshmiksha.wete@niyogin.in\" : \n(#agencyName == \"RAAJ KHOSLA & CO. PVT. LTD ( My Money Mantra / RKPL)\") ? \"jaikishan.verma@mymoneymantra.com, vivek.shridhar@mymoneymantra.com, ankit.kaushik@mymoneymantra.com\" : \n(#agencyName == \"Nafisa Ansari & Co (cresent)\") ? \"N/A\" : \n(#agencyName == \"Trueway Financial services Pvt Ltd\") ? \"accounts@trueway.co\" : \n(#agencyName == \"Divyanshi Capital Insurance Marketing Pvt Ltd\") ? \"narendra.94100@gmail.com\" : \n(#agencyName == \"A Squarian Consultants Pvt Ltd\") ? \"arun@capitalneed.com\" : \n(#agencyName == \"Parker's consulting & Ventures Pvt Ltd\") ? \"hr@parkersconsultings.com\" : \n(#agencyName == \"Truewin fintech private limited\") ? \"dhaval_262004@yahhoo.com\" : \n(#agencyName == \"Kumari Puja\") ? \"N/A\" : \n(#agencyName == \"Eklingi Finance Solutions Pvt Ltd\") ? \"eklingjifinnaceltd07@gmail.com\" : \n(#agencyName == \"Prashant\") ? \"kesarinandanfinance@gmail.com\" : \n(#agencyName == \"Rakesh Kumar\") ? \"rakeshkumar11961@gmail.com\" : \n(#agencyName == \"Shazeb Ali\") ? \"shazebzaidi283@gmail.com\" : \n(#agencyName == \"SIIA advisory Pvt Ltd\") ? \"prakash@emudras.com\" : \n(#agencyName == \"Sunil Kumar\") ? \"sunilvats04@gmail.com\" : \n(#agencyName == \"Money Matters\") ? \"momeymatters@hotmail.co.in\" : \n(#agencyName == \"Aradhna\") ? \"umesh92goswami@yahoo.com\" : \n(#agencyName == \"Quick Paisa Solution Private limited\") ? \"quickpaisa44@gmail.com\" : \n(#agencyName == \"Digix Fincap India Pvt Ltd\") ? \"teamjaipur.digix@gmail.com\" : \n(#agencyName == \"Vikram Shani Enterprises\") ? \"vikramshan53@gmail.com\" : \n(#agencyName == \"Vikram Dewan\") ? \"tossfinance2244@gmail.com\" : \n(#agencyName == \"Rajesh Kumar\") ? \"rajeshdhalla@gmail.com\" : \n(#agencyName == \"Shailesh Pandey\") ? \"N/A\" : \n(#agencyName == \"Sushil G Jadhav\") ? \"sushiljadhav@gmail.com\" : \n(#agencyName == \"Generation Next BPO Services\") ? \"robinluthra@gmail.com\" : \n(#agencyName == \"Arya Consultancy\") ? \"smartloansamadhan@gmail.com\" : \n(#agencyName == \"Prostar Finserve Pvt Ltd\") ? \"ishdhawans@gmail.com\" : \n(#agencyName == \"Capital Copia\") ? \"capitalcopia@gmail.com\" : \n(#agencyName == \"Pragati Wealth\") ? \"viren.vn@gmail.com, cc.pragatiwealth@gmail.com, pragatiwealth1@gmail.com\" : \n(#agencyName == \"PPV Advisor LLP\") ? \"vikas.n.jain@gmail.com\" : \n(#agencyName == \"Lala Ram\") ? \"N/A\" : \n(#agencyName == \"Realturity Business Advisory Private Limited\") ? \"realturitypvtltd@gmail.com\" : \n(#agencyName == \"SAARATHI FINBIZ PVT LTD\") ? \"saarathi.lp@saarathi.ai\" : \n(#agencyName == \"HEXAFIN CONSULTANCY PRIVATE LIMITED\") ? \"billing@hexafin.com\" : \n(#agencyName == \"ALPANA AGGARWAL\") ? \"finance.murlienterprises@gmail.com\" : \n(#agencyName == \"RAHUL\") ? \"vrshreeagency@gmail.com\" : \n(#agencyName == \"RINKI\") ? \"rinki2000gold@gmail.com\" : \n(#agencyName == \"USHA DHANANJAY HAJARE\") ? \"ushaflourmil@gmail.com\" : \n(#agencyName == \"DEEPAK KUMAR SHIVANI\") ? \"deepu.shivani21@gmail.com\" : \n(#agencyName == \"RAHUL KR FIN\") ? \"krfinanceservices2022@gmail.com\" : \n(#agencyName == \"THIRD DIMENSION ADVISORY LLP\") ? \"thirddimensionllp@gmail.com\" : \n(#agencyName == \"PAWAN KUMAR\") ? \"pawansharma245101@gmail.com\" : \n(#agencyName == \"AADI TRADEMART PRIVATE LIMITED\") ? \"aaditrademart@gmail.com\" : \n(#agencyName == \"RAJPUT Enterprises\") ? \"rajputdhanvarsha@gmail.com\" : \n(#agencyName == \"RAVIKASH FINANCIAL SERVICES PRIVATE LIMITED\") ? \"suman.dass@ravikash.com\" : \n(#agencyName == \"R.B ENTERPRISES\") ? \"swastikfinancepvtltd2016@gmail.com\" : \n(#agencyName == \"UNICUS FINTECH SOLUTIONS PRIVATE LIMITED\") ? \"gaurav@unicusloans.com\" : \n(#agencyName == \"APEX FINMART SERVICES\") ? \"apexfinz@gmail.com\" : \n(#agencyName == \"Impetus Adcon Private limited\") ? \"rushinnshah@gmail.com\" : \n(#agencyName == \"DHAN MOMENTUM ADVISORS PVT.LTD.\") ? \"dhanmomentumadvisorspvtltd@gmail.com\" : \n(#agencyName == \"LOAN NETWORK TECHNOLOGIES PRIVATE LIMUTED\") ? \"finance@loannetwork.app\" : \n(#agencyName == \"FUNDTRANDZ INDIA PRIVATE LIMITED\") ? \"beejendrasingh,ibs@gmail.com\" : \nnull",
        "displayOrder": 5,
        "length": 0,
        "categoryValue": "Agency Details",
        "category": "Agency Details"
      },
      {
        "id": 95,
        "name": "agencyAddress",
        "displayName": "Agency Address",
        "dataType": "String",
        "isMandatory": false,
        "isEditable": true,
        "isHidden": false,
        "isAdditionalField": true,
        "valueExpression":
            "(#agencyName == \"SKY HIGH FINANCESOLUTIONS\") ? \"602, Alokjyot CHSL, Aarey Road, Opp. Pritam Fast food, Goregaon (East), Mumbai - 400063\" : \n(#agencyName == \"Urban Money Private Limited (Square Capital)\") ? \"B -2, 5th Floor, Sector - 4, Noida, UP - 201 301\" : \n(#agencyName == \"Ruloans Distributionservices pvt ltd\") ? \"7/8, 3rd Floor,215 Magan Mahal, Sir M V Road Andheri Court Lane, Andheri (east) Mumbai - 69\" : \n(#agencyName == \"Finwizz ManagementConsultants Pvt Ltd\") ? \"6A, Arjun Bilding, V P road,Andheri west Mumbai - 400058\" : \n(#agencyName == \"Andromeda Sales &Distribution pvt ltd\") ? \"158, Dani Corporate Park, 1st floor,CST Road Kalina Santacruz East, Mumbai - 400098\" : \n(#agencyName == \"OM Financial Services\") ? \"Shop No -7, Ground floor, Shiv Kripa Bldg, Block Sector, opp Padmavati Nagar Road, Bhayander (W), thane - 401101\" : \n(#agencyName == \"Fineoteric Consulting Pvt .Ltd (Finkart)\") ? \"908, 9 th Floor, Gold Crest Buisness Center L T Road, Borivali (w), Opp. Manubhai  Jwellers Mumbai - 400092\" : \n(#agencyName == \"RUPEE BOSS\") ? \"Unit no 5A to 5D 1st floor The Centrium Phoenix marketcity LBS marg Kurla (W) Mumbai 400070\" : \n(#agencyName == \"Royal Finserv Securities\") ? \"304, 3rd Floor,Crystel Shoppers Paradise, Junction of 33rd & 24th Road, Bandra West, Mumbai - 400050\" : \n(#agencyName == \"Ratnanidhi Corporation\") ? \"Gajanan Bldg. No -6, Room No-3, Gr. Floor, Gajanan Colony Road,Nr. Bus Depot,Goregaon (W), Mumbai - 400104\" : \n(#agencyName == \"Book My Loan\") ? \"Office No-233, 2nd Floor, Ajanta Square Mall, L T Road, Nr. Borivali Court, Borivali (W) Mumbai-400092\" : \n(#agencyName == \"Royal Finserv Consultants Pvt Ltd\") ? \"1st Floor, B Block, CTS no 4/2 B Heritage 6 Ramabai Ambedkar raod (Tadiwala Road) Pune 411001\" : \n(#agencyName == \"Opendoors Fintech Private Limited (Namaste Credit)\") ? \"A-101, Mangalya Premises CHS Ltd, Wing A C plaza, Andheri East, off M Maroshi Rd, Behind Sangeet Plaza building, Marol Mumbai 400059\" : \n(#agencyName == \"Cateye Consultancy Services Pvt Ltd\") ? \"C-20, Second Floor, Plot No 201, Aruna Park, Laxmi Nagar, Near Vikas Marg, East Delhi 110092\" : \n(#agencyName == \"Planut Envestment Solutions Pvt. Ltd.\") ? \"THIRD FLOOR, S-509,, SCHOOL BLK, NEAR PRACHIN SHIV MANDIR, SHAKARPUR, East Delhi, Delhi, 110092\" : \n(#agencyName == \"Anvi Associates\") ? \"20/2A, Second Floor, Front Portion of Prem Nagar, Janak Puri, West Delhi 110058\" : \n(#agencyName == \"JBJ Associates\") ? \"Commercial Complex, 107, F/F House B-A, Balram House, Karampura, New Delhi 110015\" : \n(#agencyName == \"My Mudra Fincorp Pvt Ltd\") ? \"Secod floor, 17A/45, WEA, Karol Bagh, New Delhi, 110005\" : \n(#agencyName == \"Chase Fly Fincom Pvt Ltd\") ? \"Flat No A 803, The shree Radha Krishna CGHS, Plt no 23, Sector 7, New Delhi 110075\" : \n(#agencyName == \"SBJ BPO SERVICES LIMITED\") ? \"A-5, Third Floor, Shankar Garden, Vikaspuri, New Delhi 110018\" : \n(#agencyName == \"OSM Advisor\") ? \"1101, Silver Sea view, CHS ltd, Plot no 17, RSC-25, Sector 8, Charkop, Kandivali West Mumbai 400067\" : \n(#agencyName == \"AADiFidelis solutions pvt ltd\") ? \"T/F, 35/4, Old Rajinder Nagar, Main Road, New Delhi, Delhi 110060\" : \n(#agencyName == \"DREAM INC.\") ? \"3/2, S F Industrial Area, Kirti Nagar, West Delhi 110015\" : \n(#agencyName == \"Jai enterprises\") ? \"Third Floor, 49, Rani Jhansi Road, Pahar Ganj, Opposite Jhandewalan Temple, New Delhi  110055\" : \n(#agencyName == \"STAR Powerz Digital Techonologies Pvt Ltd\") ? \"Flat N0 911, Pragati Tower, Rajendra Palace, New Delhi 110008\" : \n(#agencyName == \"MHP Services\") ? \"Off 604, F P No 765,Fly Edge, Anove Tirumala Showroom,  TPS III, JN of S V Road, Kora Kendra Road, Borivali West Mumbai 400092\" : \n(#agencyName == \"SDV Finconsultant LLP\") ? \"Forth Floor, 401-403, Aarcads, Plot no K-12, Malviya Marg K-12, C Scheme, Jaipur, Rajsthan 302001\" : \n(#agencyName == \"Niyogin Fintech Limited\") ? \"311/312, Neelkanth Corporate IT Park, Kirol Road, Vidyavihar (West), Mumbai - 400086\" : \n(#agencyName == \"RAAJ KHOSLA & CO. PVT. LTD ( My Money Mantra / RKPL)\") ? \" 812, Suryakiran Building, 19, Kasturba Gandhi Matg, New Delhi- 110001.\" : \n(#agencyName == \"Nafisa Ansari & Co (cresent)\") ? \"Flat no 104, New Ashirwad CHS LTD, Kripa Sadan, Santawadi J P Road, Andheri West Mumbai 400058\" : \n(#agencyName == \"Trueway Financial services Pvt Ltd\") ? \"Flat No 8, Block C, Pocket 3, B.LKC, Bindapur, Dwarka, west Delhi Delhi 110059\" : \n(#agencyName == \"Divyanshi Capital Insurance Marketing Pvt Ltd\") ? \"B1/637, 3rd Flr, Janak puri, Delhi 110058\" : \n(#agencyName == \"A Squarian Consultants Pvt Ltd\") ? \"Top Floor, B-18/3, Kh No. 207, Gali No 2, Gamri Extn, Bhajanpura, New Delhi North East Delhi 110053\" : \n(#agencyName == \"Parker's consulting & Ventures Pvt Ltd\") ? \"7/2, 307, Apollo Square. RS Bhandari Marg, Indore Madhya Pradesh, 452001\" : \n(#agencyName == \"Truewin fintech private limited\") ? \"404, Panorama Complex, Navjeevan Press Road, Ashram Road, Income TAX, Ahmedabad, Gujrat 380014\" : \n(#agencyName == \"Kumari Puja\") ? \"Plot No 140, Sec 4, Vaishali Ghaziabad, Uttarpradesh 201010\" : \n(#agencyName == \"Eklingi Finance Solutions Pvt Ltd\") ? \"B449, Sumel Business Park-7, Nr Soni ni chali, N H Road, Rakhial, Ahmedabad \" : \n(#agencyName == \"Prashant\") ? \"390, Block no 15, Kalyan Puri, Chilla saroda Kahdar Delhi 110091\" : \n(#agencyName == \"Rakesh Kumar\") ? \"A-110, sani Bazar Road Nr Dinesh Bilding, Prem Nagar Part 3, Kirari Suleman Nagar Delhi 110086\" : \n(#agencyName == \"Shazeb Ali\") ? \"House No 15, KH No 8, First Floor, Street No 6, Village Dheerpur, Delhi 110009\" : \n(#agencyName == \"SIIA advisory Pvt Ltd\") ? \"Nr Patankar College, Flat N0 1402, Lillium Mahindra Gardens, S V Road, Goregaon West Mumbai 400104\" : \n(#agencyName == \"Sunil Kumar\") ? \"F 27, KH No 23/10, 2nd Floor, Deep Vihar, Delhi 110042\" : \n(#agencyName == \"Money Matters\") ? \"116, AnsalsVikasdeep Building, Disst. Center Laxmi Nagar, Delhi 110092\" : \n(#agencyName == \"Aradhna\") ? \"house no 52/44, street no 16, anand prabhat karol bhag, central delhi 110005\" : \n(#agencyName == \"Quick Paisa Solution Private limited\") ? \"3rd Floor, 17A/9, Mago Chamber Karol Baug, New Delhi 110005\" : \n(#agencyName == \"Digix Fincap India Pvt Ltd\") ? \"386, Shree Gopal Nagar, Gopalpura Bypass, Jaipur, Rajasthan 302018\" : \n(#agencyName == \"Vikram Shani Enterprises\") ? \"1101 adivashi colony mumbra thane maharashtra 400612\" : \n(#agencyName == \"Vikram Dewan\") ? \"7/138, Block 7, Subhash Nagar, West Delhi 110027\" : \n(#agencyName == \"Rajesh Kumar\") ? \"House No 1/11643, A 71, Panchsheel Garden Naveen Shahdara East Delhi 110032\" : \n(#agencyName == \"Shailesh Pandey\") ? \"B-212, Sushila Bhavan, Nr Parvati Cinema, Navghar Vasai West, 401202\" : \n(#agencyName == \"Sushil G Jadhav\") ? \"Flat No 1501, Prathamesh Pooja Socety, Kastur Park,Shimpoli Road, Borivali West, Mumbai 400092\" : \n(#agencyName == \"Generation Next BPO Services\") ? \"211-214, second floor suneja tower - 1, district center, janakpuri, new delhi - 110058\" : \n(#agencyName == \"Arya Consultancy\") ? \"A-49, Lajpat Nagar, 2nd, New Delhi 110024\" : \n(#agencyName == \"Prostar Finserve Pvt Ltd\") ? \"SCF 06, 2nd Floor, Red square Market, Hisar, Haryana 125001\" : \n(#agencyName == \"Capital Copia\") ? \"305, Kally Pura, Maliwarha, Ghaziabad 201001\" : \n(#agencyName == \"Pragati Wealth\") ? \"1st Floor, Shop No 6, Devi Lal Complex, Mr MC office, Panipat 132103\" : \n(#agencyName == \"PPV Advisor LLP\") ? \"29, Purohit ji ka paff, 22 Godam, Behind Laxmi Dharm Kata, Jaipur, Jaipur, Rajasthan, 302006\" : \n(#agencyName == \"Lala Ram\") ? \"183, B Block, J J Colony, Raghubir Nagar, Tagore Garden West Delhi Delhi 110027\" : \n(#agencyName == \"Realturity Business Advisory Private Limited\") ? \"SCO-118A, Huda Brass Market, Rewari, Haryana 123401\" : \n(#agencyName == \"SAARATHI FINBIZ PVT LTD\") ? \"URBANA BUSINESS PARK 12TH FLOOR SECTOR 67 GURGRAM HARYANA 122002\" : \n(#agencyName == \"HEXAFIN CONSULTANCY PRIVATE LIMITED\") ? \"3rd floor room no 1,2E/6 jhandewalen extn new delhi 110055\" : \n(#agencyName == \"ALPANA AGGARWAL\") ? \"HOUSE NO 40 2ND FLOOR ROHNI DELHI 110085\" : \n(#agencyName == \"RAHUL\") ? \"C-314 CHANDAN VIHAR NIHAR NANGLOI NEW DELHI 110041\" : \n(#agencyName == \"RINKI\") ? \"H N A  153 JJ COLONY HASTSAL ROAD UTTAM NAGAR WEST DELHI 110059\" : \n(#agencyName == \"USHA DHANANJAY HAJARE\") ? \"sr no 386/2 flat no 403 nabhangan housing soci mawal pune 410506\" : \n(#agencyName == \"DEEPAK KUMAR SHIVANI\") ? \"B NEW 40 Q NO 416 BAIRAGARH HUZUR BHOPAL 462030\" : \n(#agencyName == \"RAHUL KR FIN\") ? \"H NO 504 J.J CAMP INDRA NEAR BY MTNL OFFICE SECTOR 3 ROHINI NORTH WEST DELHI 10085\" : \n(#agencyName == \"THIRD DIMENSION ADVISORY LLP\") ? \"3RD FLOOR, 301-C, CTS NO 351 353 ETC, JASWANTI ALLIED BUSINESS CENTRE A WING, RAMCHANDRA LANE EXTN, NEXT TO HOTEL KHWAISH, MALAD (W), MUMBAI, 400064\" : \n(#agencyName == \"PAWAN KUMAR\") ? \"DOYMI HAPUR, HAPUR, HAPUR, UP-245101\" : \n(#agencyName == \"AADI TRADEMART PRIVATE LIMITED\") ? \"318 4th floor krishna business center near medanta hospital vijay nagar indore 452010\" : \n(#agencyName == \"RAJPUT Enterprises\") ? \"GROUND FLOOR, K . NO. 1073, , SUNDAY MARKET, CHAMAN VIHAR LONI, Ghaziabad, Uttar Pradesh, 201102\" : \n(#agencyName == \"RAVIKASH FINANCIAL SERVICES PRIVATE LIMITED\") ? \"VIJAY DWAR, FIRST FLOOR, PLOT NO 2, QUEENS HOUSE, QUEENS ROAD, VAISHALI NAGAR JAIPUR RAJASTHAN 302021\" : \n(#agencyName == \"R.B ENTERPRISES\") ? \"OFFICE NO 3A GROUND FLOOR MISHRA BUILDING NEW NAGARDAS ROAD ANDHERI EAST STATE BANK OF INDIA OLD NAGARDAS ROAD ANDHERI EAST 400069\" : \n(#agencyName == \"UNICUS FINTECH SOLUTIONS PRIVATE LIMITED\") ? \"OFFICE NO F 33 FIRST FLOOR ETERNITY COMMERCIAL PREMISES SURVEY NUMBER ROAD LBS ROAD NEAR TEEN HATH NAKA THANE WEST 400604\" : \n(#agencyName == \"APEX FINMART SERVICES\") ? \"2 PARWAHA PALACE MARKET, GARHA ROAD, BEHIND HOTEL KING JALANDHAR 144001\" : \n(#agencyName == \"Impetus Adcon Private limited\") ? \"Second Floor 206,207 Hrishikesh 2 Near Navrangpura Bus Stop, Havmor Restaurant Lane , Ahemdabad Gujrat 380009\" : \n(#agencyName == \"DHAN MOMENTUM ADVISORS PVT.LTD.\") ? \"WZ-247/B-1 FF BLOCK-A,HASTSAL ROAD UTTAM NAGAR NEW DELHI 110059\" : \n(#agencyName == \"LOAN NETWORK TECHNOLOGIES PRIVATE LIMUTED\") ? \"402b DIPTI CLASSIC SUREN ROAD BEHIND GURUNANAK PETROL PUMP ANDHERI EAST MUMBAI 400093\" : \n(#agencyName == \"FUNDTRANDZ INDIA PRIVATE LIMITED\") ? \"Near East Metro Station Second Floor Plot No B - 43 SF, Main Najafgarh, Najafgarh Road, Uttam Nagar, New Delhi - 110059\" : \nnull",
        "displayOrder": 6,
        "length": 0,
        "categoryValue": "Agency Details",
        "category": "Agency Details"
      },
      {
        "id": 96,
        "name": "agencyCreationDate",
        "displayName": "Agency Creation Date",
        "dataType": "String",
        "isMandatory": false,
        "isEditable": true,
        "isHidden": false,
        "isAdditionalField": true,
        "valueExpression":
            "(#agencyName == \"SKY HIGH FINANCESOLUTIONS\") ? \"09/11/16\" : \n(#agencyName == \"Urban Money Private Limited (Square Capital)\") ? \"22/11/16, 07/04/22 (name revised)\" : \n(#agencyName == \"Ruloans Distributionservices pvt ltd\") ? \"15/04/17\" : \n(#agencyName == \"Finwizz ManagementConsultants Pvt Ltd\") ? \"11/08/17\" : \n(#agencyName == \"Andromeda Sales &Distribution pvt ltd\") ? \"19/08/17\" : \n(#agencyName == \"OM Financial Services\") ? \"06/09/17\" : \n(#agencyName == \"Fineoteric Consulting Pvt .Ltd (Finkart)\") ? \"09/10/17\" : \n(#agencyName == \"RUPEE BOSS\") ? \"16/03/18\" : \n(#agencyName == \"Royal Finserv Securities\") ? \"08/06/18\" : \n(#agencyName == \"Ratnanidhi Corporation\") ? \"28/01/19\" : \n(#agencyName == \"Book My Loan\") ? \"01/04/19\" : \n(#agencyName == \"Royal Finserv Consultants Pvt Ltd\") ? \"17/09/19\" : \n(#agencyName == \"Opendoors Fintech Private Limited (Namaste Credit)\") ? \"11/12/19\" : \n(#agencyName == \"Cateye Consultancy Services Pvt Ltd\") ? \"16/10/20\" : \n(#agencyName == \"Planut Envestment Solutions Pvt. Ltd.\") ? \"19/12/20\" : \n(#agencyName == \"Anvi Associates\") ? \"21/12/20\" : \n(#agencyName == \"JBJ Associates\") ? \"21/12/20\" : \n(#agencyName == \"My Mudra Fincorp Pvt Ltd\") ? \"07/01/21\" : \n(#agencyName == \"Chase Fly Fincom Pvt Ltd\") ? \"21/01/21\" : \n(#agencyName == \"SBJ BPO SERVICES LIMITED\") ? \"10/02/21\" : \n(#agencyName == \"OSM Advisor\") ? \"16/02/21\" : \n(#agencyName == \"AADiFidelis solutions pvt ltd\") ? \"27/02/21\" : \n(#agencyName == \"DREAM INC.\") ? \"02/03/21\" : \n(#agencyName == \"Jai enterprises\") ? \"03/03/21\" : \n(#agencyName == \"STAR Powerz Digital Techonologies Pvt Ltd\") ? \"26/06/21\" : \n(#agencyName == \"MHP Services\") ? \"03/08/21\" : \n(#agencyName == \"SDV Finconsultant LLP\") ? \"18/09/20\" : \n(#agencyName == \"Niyogin Fintech Limited\") ? \"13/08/21\" : \n(#agencyName == \"RAAJ KHOSLA & CO. PVT. LTD ( My Money Mantra / RKPL)\") ? \"03/09/21\" : \n(#agencyName == \"Nafisa Ansari & Co (cresent)\") ? \"23/09/21\" : \n(#agencyName == \"Trueway Financial services Pvt Ltd\") ? \"08/10/21\" : \n(#agencyName == \"Divyanshi Capital Insurance Marketing Pvt Ltd\") ? \"01/02/22\" : \n(#agencyName == \"A Squarian Consultants Pvt Ltd\") ? \"05/08/22\" : \n(#agencyName == \"Parker's consulting & Ventures Pvt Ltd\") ? \"20/08/22\" : \n(#agencyName == \"Truewin fintech private limited\") ? \"25/08/22\" : \n(#agencyName == \"Kumari Puja\") ? \"09/09/22\" : \n(#agencyName == \"Eklingi Finance Solutions Pvt Ltd\") ? \"08/11/22\" : \n(#agencyName == \"Prashant\") ? \"28/11/22\" : \n(#agencyName == \"Rakesh Kumar\") ? \"28/11/22\" : \n(#agencyName == \"Shazeb Ali\") ? \"12/12/22\" : \n(#agencyName == \"SIIA advisory Pvt Ltd\") ? \"02/01/23\" : \n(#agencyName == \"Sunil Kumar\") ? \"02/01/23\" : \n(#agencyName == \"Money Matters\") ? \"02/01/23\" : \n(#agencyName == \"Aradhna\") ? \"03/01/23\" : \n(#agencyName == \"Quick Paisa Solution Private limited\") ? \"11/01/23\" : \n(#agencyName == \"Digix Fincap India Pvt Ltd\") ? \"23/01/23\" : \n(#agencyName == \"Vikram Shani Enterprises\") ? \"24/01/23\" : \n(#agencyName == \"Vikram Dewan\") ? \"22/02/23\" : \n(#agencyName == \"Rajesh Kumar\") ? \"02/03/23\" : \n(#agencyName == \"Shailesh Pandey\") ? \"16/03/23\" : \n(#agencyName == \"Sushil G Jadhav\") ? \"16/03/23\" : \n(#agencyName == \"Generation Next BPO Services\") ? \"09/05/23\" : \n(#agencyName == \"Arya Consultancy\") ? \"24/04/23\" : \n(#agencyName == \"Prostar Finserve Pvt Ltd\") ? \"11/05/23\" : \n(#agencyName == \"Capital Copia\") ? \"15/05/23\" : \n(#agencyName == \"Pragati Wealth\") ? \"16/05/23\" : \n(#agencyName == \"PPV Advisor LLP\") ? \"18/05/23\" : \n(#agencyName == \"Lala Ram\") ? \"22/06/23\" : \n(#agencyName == \"Realturity Business Advisory Private Limited\") ? \"22/06/23\" : \n(#agencyName == \"SAARATHI FINBIZ PVT LTD\") ? \"23/06/23\" : \n(#agencyName == \"HEXAFIN CONSULTANCY PRIVATE LIMITED\") ? \"03/07/23\" : \n(#agencyName == \"ALPANA AGGARWAL\") ? \"03/07/23\" : \n(#agencyName == \"RAHUL\") ? \"07/07/23\" : \n(#agencyName == \"RINKI\") ? \"11/07/23\" : \n(#agencyName == \"USHA DHANANJAY HAJARE\") ? \"11/07/23\" : \n(#agencyName == \"DEEPAK KUMAR SHIVANI\") ? \"11/07/23\" : \n(#agencyName == \"RAHUL KR FIN\") ? \"26/07/23\" : \n(#agencyName == \"THIRD DIMENSION ADVISORY LLP\") ? \"07/07/23\" : \n(#agencyName == \"PAWAN KUMAR\") ? \"31/07/23\" : \n(#agencyName == \"AADI TRADEMART PRIVATE LIMITED\") ? \"08/08/23\" : \n(#agencyName == \"RAJPUT Enterprises\") ? \"08/09/23\" : \n(#agencyName == \"RAVIKASH FINANCIAL SERVICES PRIVATE LIMITED\") ? \"25/08/23\" : \n(#agencyName == \"R.B ENTERPRISES\") ? \"16/09/23\" : \n(#agencyName == \"UNICUS FINTECH SOLUTIONS PRIVATE LIMITED\") ? \"16/09/23\" : \n(#agencyName == \"APEX FINMART SERVICES\") ? \"10/10/23\" : \n(#agencyName == \"Impetus Adcon Private limited\") ? \"17/10/23\" : \n(#agencyName == \"DHAN MOMENTUM ADVISORS PVT.LTD.\") ? \"22/11/23\" : \n(#agencyName == \"LOAN NETWORK TECHNOLOGIES PRIVATE LIMUTED\") ? \"01/12/23\" : \n(#agencyName == \"FUNDTRANDZ INDIA PRIVATE LIMITED\") ? \"16/12/23\" : \nnull",
        "displayOrder": 7,
        "length": 0,
        "categoryValue": "Agency Details",
        "category": "Agency Details"
      },
      {
        "id": 97,
        "name": "agencyActive",
        "displayName": "Is Agency Active",
        "dataType": "Selection",
        "possibleValues": ["TRUE", "FALSE"],
        "isMandatory": false,
        "isEditable": true,
        "isHidden": false,
        "isAdditionalField": true,
        "displayOrder": 9,
        "length": 0,
        "categoryValue": "Agency Details",
        "category": "Agency Details",
        "defaultSelection": "TRUE"
      },
      {
        "id": 98,
        "name": "agencyUserName",
        "displayName": "Agency User Name",
        "dataType": "String",
        "isMandatory": false,
        "isEditable": true,
        "isHidden": false,
        "isAdditionalField": true,
        "displayOrder": 10,
        "length": 0,
        "categoryValue": "Agency User Details",
        "category": "Agency User Details"
      },
      {
        "id": 99,
        "name": "agencyUserEmail",
        "displayName": "Agency User Email",
        "dataType": "String",
        "isMandatory": false,
        "isEditable": true,
        "isHidden": false,
        "isAdditionalField": true,
        "displayOrder": 11,
        "length": 0,
        "categoryValue": "Agency User Details",
        "category": "Agency User Details"
      },
      {
        "id": 100,
        "name": "agencyUserLocation",
        "displayName": "Agency User Location",
        "dataType": "String",
        "isMandatory": true,
        "isEditable": true,
        "isHidden": false,
        "isAdditionalField": true,
        "valueExpression":
            "(#agencyName == \"SKY HIGH FINANCESOLUTIONS\") ? \"Mumbai\" : \n(#agencyName == \"Urban Money Private Limited (Square Capital)\") ? \"Ahmedabad, delhi Lucknow Mumbai\" : \n(#agencyName == \"Ruloans Distributionservices pvt ltd\") ? \"Ahmedabad, Delhi, Indore, Lucknow, Jaipur, Mumbai, PCH\" : \n(#agencyName == \"Finwizz ManagementConsultants Pvt Ltd\") ? \"Ahmedabad,Delhi,Lucknow,Jaipur,Mumbai,PCH\" : \n(#agencyName == \"Andromeda Sales &Distribution pvt ltd\") ? \"Ahmedabad,Delhi,Lucknow,Jaipur,Mumbai,PCH\" : \n(#agencyName == \"OM Financial Services\") ? \"Mumbai\" : \n(#agencyName == \"Fineoteric Consulting Pvt .Ltd (Finkart)\") ? \"Ahmedabad, Delhi Mumbai\" : \n(#agencyName == \"RUPEE BOSS\") ? \"Mumbai\" : \n(#agencyName == \"Royal Finserv Securities\") ? \"Mumbai\" : \n(#agencyName == \"Ratnanidhi Corporation\") ? \"Mumbai\" : \n(#agencyName == \"Book My Loan\") ? \"Mumbai\" : \n(#agencyName == \"Royal Finserv Consultants Pvt Ltd\") ? \"Ahmedabad, Lucknow, Delhi Mumbai\" : \n(#agencyName == \"Opendoors Fintech Private Limited (Namaste Credit)\") ? \"Mumbai Pune\" : \n(#agencyName == \"Cateye Consultancy Services Pvt Ltd\") ? \"Delhi Mumbai\" : \n(#agencyName == \"Planut Envestment Solutions Pvt. Ltd.\") ? \"Delhi Lucknow\" : \n(#agencyName == \"Anvi Associates\") ? \"Delhi\" : \n(#agencyName == \"JBJ Associates\") ? \"Delhi\" : \n(#agencyName == \"My Mudra Fincorp Pvt Ltd\") ? \"Delhi\" : \n(#agencyName == \"Chase Fly Fincom Pvt Ltd\") ? \"Delhi\" : \n(#agencyName == \"SBJ BPO SERVICES LIMITED\") ? \"Delhi PCH\" : \n(#agencyName == \"OSM Advisor\") ? \"Lucknow Mumbai\" : \n(#agencyName == \"AADiFidelis solutions pvt ltd\") ? \"Ahmedabad,Delhi,Jaipur,Lucknow,Mumbai,PCH\" : \n(#agencyName == \"DREAM INC.\") ? \"Delhi\" : \n(#agencyName == \"Jai enterprises\") ? \"Delhi\" : \n(#agencyName == \"STAR Powerz Digital Techonologies Pvt Ltd\") ? \"Ahmedabad, delhi Jaipur Lucknow Mumbai Punjab\" : \n(#agencyName == \"MHP Services\") ? \"Ahmedabad , Mumbai\" : \n(#agencyName == \"SDV Finconsultant LLP\") ? \"Ahmedabad Jaipur\" : \n(#agencyName == \"Niyogin Fintech Limited\") ? \"Ahmedabad, Delhi Mumbai\" : \n(#agencyName == \"RAAJ KHOSLA & CO. PVT. LTD ( My Money Mantra / RKPL)\") ? \"Ahmedabad, Delhi Jaipur, Indore, Mumbai, PCH\" : \n(#agencyName == \"Nafisa Ansari & Co (cresent)\") ? \"Mumbai Pune\" : \n(#agencyName == \"Trueway Financial services Pvt Ltd\") ? \"Pune\" : \n(#agencyName == \"Divyanshi Capital Insurance Marketing Pvt Ltd\") ? \"Ahmedabad, Delhi\" : \n(#agencyName == \"A Squarian Consultants Pvt Ltd\") ? \"Ahmedabad Delhi\" : \n(#agencyName == \"Parker's consulting & Ventures Pvt Ltd\") ? \"Delhi Mumbai PCH\" : \n(#agencyName == \"Truewin fintech private limited\") ? \"Ahmedabad\" : \n(#agencyName == \"Kumari Puja\") ? \"Delhi\" : \n(#agencyName == \"Eklingi Finance Solutions Pvt Ltd\") ? \"Ahmedabad\" : \n(#agencyName == \"Prashant\") ? \"Delhi\" : \n(#agencyName == \"Rakesh Kumar\") ? \"Delhi\" : \n(#agencyName == \"Shazeb Ali\") ? \"Delhi\" : \n(#agencyName == \"SIIA advisory Pvt Ltd\") ? \"Delhi\" : \n(#agencyName == \"Sunil Kumar\") ? \"Delhi\" : \n(#agencyName == \"Money Matters\") ? \"Delhi\" : \n(#agencyName == \"Aradhna\") ? \"Delhi\" : \n(#agencyName == \"Quick Paisa Solution Private limited\") ? \"Delhi\" : \n(#agencyName == \"Digix Fincap India Pvt Ltd\") ? \"Jaipur\" : \n(#agencyName == \"Vikram Shani Enterprises\") ? \"Mumbai\" : \n(#agencyName == \"Vikram Dewan\") ? \"Delhi\" : \n(#agencyName == \"Rajesh Kumar\") ? \"Delhi\" : \n(#agencyName == \"Shailesh Pandey\") ? \"Mumbai\" : \n(#agencyName == \"Sushil G Jadhav\") ? \"Mumbai\" : \n(#agencyName == \"Generation Next BPO Services\") ? \"Jaipur, Lucknow PCH\" : \n(#agencyName == \"Arya Consultancy\") ? \"Delhi\" : \n(#agencyName == \"Prostar Finserve Pvt Ltd\") ? \"PCH\" : \n(#agencyName == \"Capital Copia\") ? \"Delhi\" : \n(#agencyName == \"Pragati Wealth\") ? \"PCH\" : \n(#agencyName == \"PPV Advisor LLP\") ? \"Jaipur\" : \n(#agencyName == \"Lala Ram\") ? \"Delhi\" : \n(#agencyName == \"Realturity Business Advisory Private Limited\") ? \"Haryana\" : \n(#agencyName == \"SAARATHI FINBIZ PVT LTD\") ? \"DELHI\" : \n(#agencyName == \"HEXAFIN CONSULTANCY PRIVATE LIMITED\") ? \"DELHI\" : \n(#agencyName == \"ALPANA AGGARWAL\") ? \"DELHI\" : \n(#agencyName == \"RAHUL\") ? \"DELHI\" : \n(#agencyName == \"RINKI\") ? \"DELHI\" : \n(#agencyName == \"USHA DHANANJAY HAJARE\") ? \"PUNE\" : \n(#agencyName == \"DEEPAK KUMAR SHIVANI\") ? \"BHOPAL\" : \n(#agencyName == \"RAHUL KR FIN\") ? \"DELHI\" : \n(#agencyName == \"THIRD DIMENSION ADVISORY LLP\") ? \"MUMBAI\" : \n(#agencyName == \"PAWAN KUMAR\") ? \"UTTAR PRADESH\" : \n(#agencyName == \"AADI TRADEMART PRIVATE LIMITED\") ? \"Ahmedabad\" : \n(#agencyName == \"RAJPUT Enterprises\") ? \"UTTAR PRADESH\" : \n(#agencyName == \"RAVIKASH FINANCIAL SERVICES PRIVATE LIMITED\") ? \"RAJASTHAN\" : \n(#agencyName == \"R.B ENTERPRISES\") ? \"MUMBAI\" : \n(#agencyName == \"UNICUS FINTECH SOLUTIONS PRIVATE LIMITED\") ? \"MUMBAI\" : \n(#agencyName == \"APEX FINMART SERVICES\") ? \"PCH\" : \n(#agencyName == \"Impetus Adcon Private limited\") ? \"Ahmedabad\" : \n(#agencyName == \"DHAN MOMENTUM ADVISORS PVT.LTD.\") ? \"Delhi\" : \n(#agencyName == \"LOAN NETWORK TECHNOLOGIES PRIVATE LIMUTED\") ? \"Mumbai\" : \n(#agencyName == \"FUNDTRANDZ INDIA PRIVATE LIMITED\") ? \"Delhi\" : \nnull",
        "displayOrder": 12,
        "length": 0,
        "categoryValue": "Agency User Details",
        "category": "Agency User Details"
      },
      {
        "id": 101,
        "name": "agencyUserCreationDate",
        "displayName": "Agency User Creation Date",
        "dataType": "Date",
        "isMandatory": false,
        "isEditable": true,
        "isHidden": false,
        "isAdditionalField": true,
        "displayOrder": 13,
        "length": 0,
        "categoryValue": "Agency User Details",
        "category": "Agency User Details"
      },
      {
        "id": 102,
        "name": "agencyUserActive",
        "displayName": "Is Agency User Active",
        "dataType": "Selection",
        "possibleValues": ["TRUE", "FALSE"],
        "isMandatory": false,
        "isEditable": true,
        "isHidden": false,
        "isAdditionalField": true,
        "displayOrder": 14,
        "length": 0,
        "categoryValue": "Agency User Details",
        "category": "Agency User Details",
        "defaultSelection": "TRUE"
      },
      {
        "id": 103,
        "name": "agencyMobileNumber",
        "displayName": "Agency Mobile Number",
        "dataType": "String",
        "isMandatory": true,
        "isEditable": true,
        "isHidden": false,
        "isAdditionalField": true,
        "valueExpression":
            "(#agencyName == \"SKY HIGH FINANCESOLUTIONS\") ? \"9870727170, 022-65500448\" : \n(#agencyName == \"Urban Money Private Limited (Square Capital)\") ? \"8655091789\" : \n(#agencyName == \"Ruloans Distributionservices pvt ltd\") ? \"022-67707070\" : \n(#agencyName == \"Finwizz ManagementConsultants Pvt Ltd\") ? \"022-26243239\" : \n(#agencyName == \"Andromeda Sales &Distribution pvt ltd\") ? \"9167112222\" : \n(#agencyName == \"OM Financial Services\") ? \"8956117488\" : \n(#agencyName == \"Fineoteric Consulting Pvt .Ltd (Finkart)\") ? \"2240161112\" : \n(#agencyName == \"RUPEE BOSS\") ? \"\" : \n(#agencyName == \"Royal Finserv Securities\") ? \"9820989597\" : \n(#agencyName == \"Ratnanidhi Corporation\") ? \"8976874916, 9323182876\" : \n(#agencyName == \"Book My Loan\") ? \"8424006919\" : \n(#agencyName == \"Royal Finserv Consultants Pvt Ltd\") ? \"7385715195\" : \n(#agencyName == \"Opendoors Fintech Private Limited (Namaste Credit)\") ? \"9820510813\" : \n(#agencyName == \"Cateye Consultancy Services Pvt Ltd\") ? \"9999402356\" : \n(#agencyName == \"Planut Envestment Solutions Pvt. Ltd.\") ? \"8130813738\" : \n(#agencyName == \"Anvi Associates\") ? \"9810297846\" : \n(#agencyName == \"JBJ Associates\") ? \"9891940007\" : \n(#agencyName == \"My Mudra Fincorp Pvt Ltd\") ? \"9873737358\" : \n(#agencyName == \"Chase Fly Fincom Pvt Ltd\") ? \"7827844458\" : \n(#agencyName == \"SBJ BPO SERVICES LIMITED\") ? \"9810479434\" : \n(#agencyName == \"OSM Advisor\") ? \"9867451288\" : \n(#agencyName == \"AADiFidelis solutions pvt ltd\") ? \"9810845077\" : \n(#agencyName == \"DREAM INC.\") ? \"9899771339\" : \n(#agencyName == \"Jai enterprises\") ? \"9169989433\" : \n(#agencyName == \"STAR Powerz Digital Techonologies Pvt Ltd\") ? \"9871052946\" : \n(#agencyName == \"MHP Services\") ? \"2228083838, 9867712644\" : \n(#agencyName == \"SDV Finconsultant LLP\") ? \"9828020529\" : \n(#agencyName == \"Niyogin Fintech Limited\") ? \"022-62514646\" : \n(#agencyName == \"RAAJ KHOSLA & CO. PVT. LTD ( My Money Mantra / RKPL)\") ? \"9314099933, 7014493604\" : \n(#agencyName == \"Nafisa Ansari & Co (cresent)\") ? \"9867169412\" : \n(#agencyName == \"Trueway Financial services Pvt Ltd\") ? \"9370288258, 9822287438\" : \n(#agencyName == \"Divyanshi Capital Insurance Marketing Pvt Ltd\") ? \"8375837613\" : \n(#agencyName == \"A Squarian Consultants Pvt Ltd\") ? \"9811231722\" : \n(#agencyName == \"Parker's consulting & Ventures Pvt Ltd\") ? \"9893055575, 9131650707\" : \n(#agencyName == \"Truewin fintech private limited\") ? \"9825869262\" : \n(#agencyName == \"Kumari Puja\") ? \"9711299582\" : \n(#agencyName == \"Eklingi Finance Solutions Pvt Ltd\") ? \"8200429969\" : \n(#agencyName == \"Prashant\") ? \"9958206886\" : \n(#agencyName == \"Rakesh Kumar\") ? \"9999208602\" : \n(#agencyName == \"Shazeb Ali\") ? \"7042834140\" : \n(#agencyName == \"SIIA advisory Pvt Ltd\") ? \"9971054862\" : \n(#agencyName == \"Sunil Kumar\") ? \"9711154515\" : \n(#agencyName == \"Money Matters\") ? \"9899261888\" : \n(#agencyName == \"Aradhna\") ? \"9891788521\" : \n(#agencyName == \"Quick Paisa Solution Private limited\") ? \"7906615733\" : \n(#agencyName == \"Digix Fincap India Pvt Ltd\") ? \"9278212121\" : \n(#agencyName == \"Vikram Shani Enterprises\") ? \"8928337448\" : \n(#agencyName == \"Vikram Dewan\") ? \"9910543192\" : \n(#agencyName == \"Rajesh Kumar\") ? \"8586960175\" : \n(#agencyName == \"Shailesh Pandey\") ? \"9518535665\" : \n(#agencyName == \"Sushil G Jadhav\") ? \"9987043471\" : \n(#agencyName == \"Generation Next BPO Services\") ? \"9999612300\" : \n(#agencyName == \"Arya Consultancy\") ? \"9643342982\" : \n(#agencyName == \"Prostar Finserve Pvt Ltd\") ? \"9355380483\" : \n(#agencyName == \"Capital Copia\") ? \"8588824071\" : \n(#agencyName == \"Pragati Wealth\") ? \"9812800073, 8059119400\" : \n(#agencyName == \"PPV Advisor LLP\") ? \"9549964985\" : \n(#agencyName == \"Lala Ram\") ? \"9811959514\" : \n(#agencyName == \"Realturity Business Advisory Private Limited\") ? \"\" : \n(#agencyName == \"SAARATHI FINBIZ PVT LTD\") ? \"9818655074\" : \n(#agencyName == \"HEXAFIN CONSULTANCY PRIVATE LIMITED\") ? \"9871919565\" : \n(#agencyName == \"ALPANA AGGARWAL\") ? \"9990098190\" : \n(#agencyName == \"RAHUL\") ? \"8800570879\" : \n(#agencyName == \"RINKI\") ? \"9311365762\" : \n(#agencyName == \"USHA DHANANJAY HAJARE\") ? \"777038563\" : \n(#agencyName == \"DEEPAK KUMAR SHIVANI\") ? \"8839331705\" : \n(#agencyName == \"RAHUL KR FIN\") ? \"8920608809\" : \n(#agencyName == \"THIRD DIMENSION ADVISORY LLP\") ? \"9833105297\" : \n(#agencyName == \"PAWAN KUMAR\") ? \"9634667810\" : \n(#agencyName == \"AADI TRADEMART PRIVATE LIMITED\") ? \"7024137832\" : \n(#agencyName == \"RAJPUT Enterprises\") ? \"9911615425\" : \n(#agencyName == \"RAVIKASH FINANCIAL SERVICES PRIVATE LIMITED\") ? \"9649907628\" : \n(#agencyName == \"R.B ENTERPRISES\") ? \"9892942390\" : \n(#agencyName == \"UNICUS FINTECH SOLUTIONS PRIVATE LIMITED\") ? \"8451040747\" : \n(#agencyName == \"APEX FINMART SERVICES\") ? \"9815001355\" : \n(#agencyName == \"Impetus Adcon Private limited\") ? \"9824000387\" : \n(#agencyName == \"DHAN MOMENTUM ADVISORS PVT.LTD.\") ? \"8802721769\" : \n(#agencyName == \"LOAN NETWORK TECHNOLOGIES PRIVATE LIMUTED\") ? \"9892855210\" : \n(#agencyName == \"FUNDTRANDZ INDIA PRIVATE LIMITED\") ? \"9620999098\" : \nnull",
        "displayOrder": 15,
        "length": 0,
        "categoryValue": "Agency Details",
        "category": "Agency Details"
      }
    ],
    "categories": ["Agency Details", "Agency User Details"]
  };
}
