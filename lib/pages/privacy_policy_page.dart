import 'package:flutter/material.dart';
import 'package:newquist_dev/util/constants.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class PrivacyPolicyPage extends StatefulWidget {
  const PrivacyPolicyPage({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicyPage> createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  late ItemScrollController _itemScrollController;

  @override
  void initState() {
    _itemScrollController = ItemScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollablePositionedList.builder(
        itemScrollController: _itemScrollController,
        physics: const ClampingScrollPhysics(),
        itemCount: privacyPolicyWidgets.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: privacyPolicyWidgets[index],
          );
        });
  }

  List<Widget> privacyPolicyWidgets = [
    const SelectableText(
      'PRIVACY NOTICE',
      style: header,
    ),
    const SelectableText(
      'Last updated June 10, 2022',
      style: header2,
    ),
    const SelectableText(
        'This privacy notice for RNDev (" Company ," "we," "us," or "our" ), describes how and why we might collect, store, use, and/or share ("process") your information when you use our services ("Services"), such as when you:'),
    const SelectableText(
        '   • Visit our website at http://www.newquist.dev , or any website of ours that links to this privacy notice'),
    const SelectableText(
        '   • Download and use our mobile application (Distilled) , or any other application of ours that links to this privacy notice'),
    const SelectableText(
        '   • Engage with us in other related ways, including any sales, marketing, or events'),
    const SelectableText(
        'Questions or concerns? Reading this privacy notice will help you understand your privacy rights and choices. If you do not agree with our policies and practices, please do not use our Services. If you still have any questions or concerns, please contact us at ryan@newquist.dev.'),
    const SelectableText(
      'SUMMARY OF KEY POINTS',
      style: header,
    ),
    const SelectableText(
      'This summary provides key points from our privacy notice, but you can find out more details about any of these topics by clicking the link following each key point or by using our table of contents below to find the section you are looking for.',
      style: header2,
    ),
    const SelectableText(
        'What personal information do we process? When you visit, use, or navigate our Services, we may process personal information depending on how you interact with RNDev and the Services, the choices you make, and the products and features you use.'),
    const SelectableText(
        'Do we process any sensitive personal information? We do not process sensitive personal information.'),
    const SelectableText(
        'How do we process your information? We process your information to provide, improve, and administer our Services, communicate with you, for security and fraud prevention, and to comply with law. We may also process your information for other purposes with your consent. We process your information only when we have a valid legal reason to do so.'),
    const SelectableText(
        'In what situations and with which parties do we share personal information? We may share information in specific situations and with specific third parties.'),
    const SelectableText(
        'How do we keep your information safe? We have organizational and technical processes and procedures in place to protect your personal information. However, no electronic transmission over the internet or information storage technology can be guaranteed to be 100% secure, so we cannot promise or guarantee that hackers, cybercriminals, or other unauthorized third parties will not be able to defeat our security and improperly collect, access, steal, or modify your information.'),
    const SelectableText(
        'What are your rights? Depending on where you are located geographically, the applicable privacy law may mean you have certain rights regarding your personal information.'),
    const SelectableText(
        'How do you exercise your rights? The easiest way to exercise your rights is by filling out our data subject request form available here , or by contacting us. We will consider and act upon any request in accordance with applicable data protection laws.'),
    const SelectableText(
      'TABLE OF CONTENTS',
      style: header,
    ),
    const SelectableText('1. WHAT INFORMATION DO WE COLLECT?'),
    const SelectableText('2. HOW DO WE PROCESS YOUR INFORMATION?'),
    const SelectableText(
        '3. WHAT LEGAL BASES DO WE RELY ON TO PROCESS YOUR PERSONAL INFORMATION?'),
    const SelectableText('4. WHEN AND WITH WHOM DO WE SHARE YOUR PERSONAL INFORMATION?'),
    const SelectableText('5. HOW DO WE HANDLE YOUR SOCIAL LOGINS?'),
    const SelectableText('6. HOW LONG DO WE KEEP YOUR INFORMATION?'),
    const SelectableText('7. HOW DO WE KEEP YOUR INFORMATION SAFE?'),
    const SelectableText('8. DO WE COLLECT INFORMATION FROM MINORS?'),
    const SelectableText('9. WHAT ARE YOUR PRIVACY RIGHTS?'),
    const SelectableText('10. CONTROLS FOR DO-NOT-TRACK FEATURES'),
    const SelectableText('11. DO CALIFORNIA RESIDENTS HAVE SPECIFIC PRIVACY RIGHTS?'),
    const SelectableText('12. DO WE MAKE UPDATES TO THIS NOTICE?'),
    const SelectableText('13. HOW CAN YOU CONTACT US ABOUT THIS NOTICE?'),
    const SelectableText(
        '14. HOW CAN YOU REVIEW, UPDATE, OR DELETE THE DATA WE COLLECT FROM YOU?'),
    const SelectableText(
      '1. WHAT INFORMATION DO WE COLLECT?',
      style: header,
    ),
    const SelectableText(
      'Personal information you disclose to us',
      style: header,
    ),
    const SelectableText('In Short: We collect personal information that you provide to us.'),
    const SelectableText(
        'We collect personal information that you voluntarily provide to us when you register on the Services,  express an interest in obtaining information about us or our products and Services, when you participate in activities on the Services, or otherwise when you contact us.'),
    const SelectableText(
        'Personal Information Provided by You. The personal information that we collect depends on the context of your interactions with us and the Services, the choices you make, and the products and features you use. The personal information we collect may include the following:'),
    const SelectableText('    • names'),
    const SelectableText('    • phone numbers'),
    const SelectableText('    • email addresses'),
    const SelectableText('    • usernames'),
    const SelectableText('    • passwords'),
    const SelectableText('    • date of birth'),
    const SelectableText('Sensitive Information. We do not process sensitive information.'),
    const SelectableText(
        'Social Media Login Data. We may provide you with the option to register with us using your existing social media account details, like your Facebook, Twitter, or other social media account. If you choose to register in this way, we will collect the information described in the section called "HOW DO WE HANDLE YOUR SOCIAL LOGINS? " below.'),
    const SelectableText(
        'Application Data. If you use our application(s), we also may collect the following information if you choose to provide us with access or permission:'),
    const SelectableText(
        '    • Mobile Device Data. We automatically collect device information (such as your mobile device ID, model, and manufacturer), operating system, version information and system configuration information, device and application identification numbers, browser type and version, hardware model Internet service provider and/or mobile carrier, and Internet Protocol (IP) address (or proxy server). If you are using our application(s), we may also collect information about the phone network associated with your mobile device, your mobile device’s operating system or platform, the type of mobile device you use, your mobile device’s unique device ID, and information about the features of our application(s) you accessed.'),
    const SelectableText(
        '    • Push Notifications. We may request to send you push notifications regarding your account or certain features of the application(s). If you wish to opt out from receiving these types of communications, you may turn them off in your device\'s settings.'),
    const SelectableText(
        'This information is primarily needed to maintain the security and operation of our application(s), for troubleshooting, and for our internal analytics and reporting purposes.'),
    const SelectableText(
        'All personal information that you provide to us must be true, complete, and accurate, and you must notify us of any changes to such personal information.'),
    const SelectableText(
      'Information automatically collected',
      style: header,
    ),
    const SelectableText(
        'In Short: Some information — such as your Internet Protocol (IP) address and/or browser and device characteristics — is collected automatically when you visit our Services.'),
    const SelectableText(
        'We automatically collect certain information when you visit, use, or navigate the Services. This information does not reveal your specific identity (like your name or contact information) but may include device and usage information, such as your IP address, browser and device characteristics, operating system, language preferences, referring URLs, device name, country, location, information about how and when you use our Services, and other technical information. This information is primarily needed to maintain the security and operation of our Services, and for our internal analytics and reporting purposes.'),
    const SelectableText('The information we collect includes:'),
    const SelectableText(
        '    • Log and Usage Data. Log and usage data is service-related, diagnostic, usage, and performance information our servers automatically collect when you access or use our Services and which we record in log files. Depending on how you interact with us, this log data may include your IP address, device information, browser type, and settings and information about your activity in the Services (such as the date/time stamps associated with your usage, pages and files viewed, searches, and other actions you take such as which features you use), device event information (such as system activity, error reports (sometimes called "crash dumps"), and hardware settings).'),
    const SelectableText(
        '    • Device Data. We collect device data such as information about your computer, phone, tablet, or other device you use to access the Services. Depending on the device used, this device data may include information such as your IP address (or proxy server), device and application identification numbers, location, browser type, hardware model, Internet service provider and/or mobile carrier, operating system, and system configuration information.'),
    const SelectableText(
      '2. HOW DO WE PROCESS YOUR INFORMATION?',
      style: header,
    ),
    const SelectableText(
        'In Short: We process your information to provide, improve, and administer our Services, communicate with you, for security and fraud prevention, and to comply with law. We may also process your information for other purposes with your consent.'),
    const SelectableText(
      'We process your personal information for a variety of reasons, depending on how you interact with our Services, including:',
      style: header2,
    ),
    const SelectableText(
        '    • To facilitate account creation and authentication and otherwise manage user accounts. We may process your information so you can create and log in to your account, as well as keep your account in working order.'),
    const SelectableText(
        '    • To request feedback. We may process your information when necessary to request feedback and to contact you about your use of our Services.'),
    const SelectableText(
        '    • To deliver targeted advertising to you. We may process your information to develop and display personalized content and advertising tailored to your interests, location, and more.'),
    const SelectableText(
        '    • To protect our Services. We may process your information as part of our efforts to keep our Services safe and secure, including fraud monitoring and prevention.'),
    const SelectableText(
        '    • To identify usage trends. We may process information about how you use our Services to better understand how they are being used so we can improve them.'),
    const SelectableText(
        '    • To save or protect an individual\'s vital interest. We may process your information when necessary to save or protect an individual\'s vital interest, such as to prevent harm.'),
    const SelectableText(
      '3. WHAT LEGAL BASES DO WE RELY ON TO PROCESS YOUR INFORMATION?',
      style: header,
    ),
    const SelectableText(
        'In Short: We only process your personal information when we believe it is necessary and we have a valid legal reason (i.e. , legal basis) to do so under applicable law, like with your consent, to comply with laws, to provide you with services to enter into or fulfill our contractual obligations, to protect your rights, or to fulfill our legitimate business interests.'),
    const SelectableText(
      'If you are located in the EU or UK, this section applies to you.',
      style: header2,
    ),
    const SelectableText(
        'The General Data Protection Regulation (GDPR) and UK GDPR require us to explain the valid legal bases we rely on in order to process your personal information. As such, we may rely on the following legal bases to process your personal information:'),
    const SelectableText(
        '    • Consent. We may process your information if you have given us permission (i.e. , consent) to use your personal information for a specific purpose. You can withdraw your consent at any time. Click here to learn more.'),
    const SelectableText(
        '    • Legitimate Interests. We may process your information when we believe it is reasonably necessary to achieve our legitimate business interests and those interests do not outweigh your interests and fundamental rights and freedoms. For example, we may process your personal information for some of the purposes described in order to:'),
    const SelectableText(
        '         • Develop and display personalized and relevant advertising content for our users'),
    const SelectableText(
        '         • Analyze how our services are used so we can improve them to engage and retain users'),
    const SelectableText('          • Diagnose problems and/or prevent fraudulent activities'),
    const SelectableText(
        '         • Understand how our users use our products and services so we can improve user experience'),
    const SelectableText(
        '    • Legal Obligations. We may process your information where we believe it is necessary for compliance with our legal obligations, such as to cooperate with a law enforcement body or regulatory agency, exercise or defend our legal rights, or disclose your information as evidence in litigation in which we are involved.'),
    const SelectableText(
        '    • Vital Interests. We may process your information where we believe it is necessary to protect your vital interests or the vital interests of a third party, such as situations involving potential threats to the safety of any person.'),
    const SelectableText(
      'If you are located in Canada, this section applies to you.',
      style: header2,
    ),
    const SelectableText(
        'We may process your information if you have given us specific permission (i.e. , express consent) to use your personal information for a specific purpose, or in situations where your permission can be inferred (i.e. , implied consent). You can withdraw your consent at any time. Click here to learn more.'),
    const SelectableText(
        'In some exceptional cases, we may be legally permitted under applicable law to process your information without your consent, including, for example:'),
    const SelectableText(
        '    • If collection is clearly in the interests of an individual and consent cannot be obtained in a timely way'),
    const SelectableText('    • For investigations and fraud detection and prevention'),
    const SelectableText('    • For business transactions provided certain conditions are met'),
    const SelectableText(
        '    • If it is contained in a witness statement and the collection is necessary to assess, process, or settle an insurance claim'),
    const SelectableText(
        '    • For identifying injured, ill, or deceased persons and communicating with next of kin'),
    const SelectableText(
        '    • If we have reasonable grounds to believe an individual has been, is, or may be victim of financial abuse'),
    const SelectableText(
        '    • If it is reasonable to expect collection and use with consent would compromise the availability or the accuracy of the information and the collection is reasonable for purposes related to investigating a breach of an agreement or a contravention of the laws of Canada or a province'),
    const SelectableText(
        '    • If disclosure is required to comply with a subpoena, warrant, court order, or rules of the court relating to the production of records'),
    const SelectableText(
        '    • If it was produced by an individual in the course of their employment, business, or profession and the collection is consistent with the purposes for which the information was produced'),
    const SelectableText(
        '    • If the collection is solely for journalistic, artistic, or literary purposes'),
    const SelectableText(
        '    • If the information is publicly available and is specified by the regulations'),
    const SelectableText(
      '4. WHEN AND WITH WHOM DO WE SHARE YOUR PERSONAL INFORMATION?',
      style: header,
    ),
    const SelectableText(
        'In Short: We may share information in specific situations described in this section and/or with the following third parties.'),
    const SelectableText(
        'We may need to share your personal information in the following situations:'),
    const SelectableText(
        '    • Business Transfers. We may share or transfer your information in connection with, or during negotiations of, any merger, sale of company assets, financing, or acquisition of all or a portion of our business to another company.'),
    const SelectableText(
      '5. HOW DO WE HANDLE YOUR SOCIAL LOGINS?',
      style: header,
    ),
    const SelectableText(
        'In Short: If you choose to register or log in to our services using a social media account, we may have access to certain information about you.'),
    const SelectableText(
        'Our Services offer you the ability to register and log in using your third-party social media account details (like your Facebook or Twitter logins). Where you choose to do this, we will receive certain profile information about you from your social media provider. The profile information we receive may vary depending on the social media provider concerned, but will often include your name, email address, friends list, and profile picture, as well as other information you choose to make public on such a social media platform.'),
    const SelectableText(
        'We will use the information we receive only for the purposes that are described in this privacy notice or that are otherwise made clear to you on the relevant Services. Please note that we do not control, and are not responsible for, other uses of your personal information by your third-party social media provider. We recommend that you review their privacy notice to understand how they collect, use, and share your personal information, and how you can set your privacy preferences on their sites and apps.'),
    const SelectableText(
      '6. HOW LONG DO WE KEEP YOUR INFORMATION?',
      style: header,
    ),
    const SelectableText(
        'In Short: We keep your information for as long as necessary to fulfill the purposes outlined in this privacy notice unless otherwise required by law.'),
    const SelectableText(
        'We will only keep your personal information for as long as it is necessary for the purposes set out in this privacy notice, unless a longer retention period is required or permitted by law (such as tax, accounting, or other legal requirements). No purpose in this notice will require us keeping your personal information for longer than the period of time in which users have an account with us .'),
    const SelectableText(
        'When we have no ongoing legitimate business need to process your personal information, we will either delete or anonymize such information, or, if this is not possible (for example, because your personal information has been stored in backup archives), then we will securely store your personal information and isolate it from any further processing until deletion is possible.'),
    const SelectableText(
      '7. HOW DO WE KEEP YOUR INFORMATION SAFE?',
      style: header,
    ),
    const SelectableText(
        'In Short: We aim to protect your personal information through a system of organizational and technical security measures.'),
    const SelectableText(
        'We have implemented appropriate and reasonable technical and organizational security measures designed to protect the security of any personal information we process. However, despite our safeguards and efforts to secure your information, no electronic transmission over the Internet or information storage technology can be guaranteed to be 100% secure, so we cannot promise or guarantee that hackers, cybercriminals, or other unauthorized third parties will not be able to defeat our security and improperly collect, access, steal, or modify your information. Although we will do our best to protect your personal information, transmission of personal information to and from our Services is at your own risk. You should only access the Services within a secure environment.'),
    const SelectableText(
      '8. DO WE COLLECT INFORMATION FROM MINORS?',
      style: header,
    ),
    const SelectableText(
        'In Short: We do not knowingly collect data from or market to children under 18 years of age.'),
    const SelectableText(
        'We do not knowingly solicit data from or market to children under 18 years of age. By using the Services, you represent that you are at least 18 or that you are the parent or guardian of such a minor and consent to such minor dependent’s use of the Services. If we learn that personal information from users less than 18 years of age has been collected, we will deactivate the account and take reasonable measures to promptly delete such data from our records. If you become aware of any data we may have collected from children under age 18, please contact us at ryan@newquist.dev .'),
    const SelectableText(
      '9. WHAT ARE YOUR PRIVACY RIGHTS?',
      style: header,
    ),
    const SelectableText(
        'In Short:  In some regions, such as the European Economic Area (EEA), United Kingdom (UK), and Canada , you have rights that allow you greater access to and control over your personal information.  You may review, change, or terminate your account at any time.'),
    const SelectableText(
        'In some regions (like the EEA, UK, and Canada ), you have certain rights under applicable data protection laws. These may include the right (i) to request access and obtain a copy of your personal information, (ii) to request rectification or erasure; (iii) to restrict the processing of your personal information; and (iv) if applicable, to data portability. In certain circumstances, you may also have the right to object to the processing of your personal information. You can make such a request by contacting us by using the contact details provided in the section " HOW CAN YOU CONTACT US ABOUT THIS NOTICE? " below.'),
    const SelectableText(
        'We will consider and act upon any request in accordance with applicable data protection laws.'),
    const SelectableText(
        'If you are located in the EEA or UK and you believe we are unlawfully processing your personal information, you also have the right to complain to your local data protection supervisory authority. You can find their contact details here: https://ec.europa.eu/justice/data-protection/bodies/authorities/index_en.htm.'),
    const SelectableText(
        'If you are located in Switzerland, the contact details for the data protection authorities are available here: https://www.edoeb.admin.ch/edoeb/en/home.html.'),
    const SelectableText(
        'Withdrawing your consent: If we are relying on your consent to process your personal information, which may be express and/or implied consent depending on the applicable law, you have the right to withdraw your consent at any time. You can withdraw your consent at any time by contacting us by using the contact details provided in the section " HOW CAN YOU CONTACT US ABOUT THIS NOTICE? " below .'),
    const SelectableText(
        'However, please note that this will not affect the lawfulness of the processing before its withdrawal, nor when applicable law allows, will it affect the processing of your personal information conducted in reliance on lawful processing grounds other than consent.'),
    const SelectableText(
      'Account Information',
      style: header,
    ),
    const SelectableText(
        'If you would at any time like to review or change the information in your account or terminate your account, you can:'),
    const SelectableText('    • Log in to your account settings and update your user account.'),
    const SelectableText(
        'Upon your request to terminate your account, we will deactivate or delete your account and information from our active databases. However, we may retain some information in our files to prevent fraud, troubleshoot problems, assist with any investigations, enforce our legal terms and/or comply with applicable legal requirements.'),
    const SelectableText(
        'If you have questions or comments about your privacy rights, you may email us at ryan@newquist.dev'),
    const SelectableText(
      '10. CONTROLS FOR DO-NOT-TRACK FEATURES',
      style: header,
    ),
    const SelectableText(
        'Most web browsers and some mobile operating systems and mobile applications include a Do-Not-Track ( "DNT" ) feature or setting you can activate to signal your privacy preference not to have data about your online browsing activities monitored and collected. At this stage no uniform technology standard for recognizing and implementing DNT signals has been finalized . As such, we do not currently respond to DNT browser signals or any other mechanism that automatically communicates your choice not to be tracked online. If a standard for online tracking is adopted that we must follow in the future, we will inform you about that practice in a revised version of this privacy notice.'),
    const SelectableText(
      '11. DO CALIFORNIA RESIDENTS HAVE SPECIFIC PRIVACY RIGHTS?',
      style: header,
    ),
    const SelectableText(
        'In Short: Yes, if you are a resident of California, you are granted specific rights regarding access to your personal information.'),
    const SelectableText(
        'California Civil Code Section 1798.83, also known as the "Shine The Light" law, permits our users who are California residents to request and obtain from us, once a year and free of charge, information about categories of personal information (if any) we disclosed to third parties for direct marketing purposes and the names and addresses of all third parties with which we shared personal information in the immediately preceding calendar year. If you are a California resident and would like to make such a request, please submit your request in writing to us using the contact information provided below.'),
    const SelectableText(
        'If you are under 18 years of age, reside in California, and have a registered account with Services, you have the right to request removal of unwanted data that you publicly post on the Services. To request removal of such data, please contact us using the contact information provided below and include the email address associated with your account and a statement that you reside in California. We will make sure the data is not publicly displayed on the Services, but please be aware that the data may not be completely or comprehensively removed from all our systems (e.g. , backups, etc.).'),
    const SelectableText(
      'CCPA Privacy Notice',
      style: header,
    ),
    const SelectableText('The California Code of Regulations defines a "resident" as:'),
    const SelectableText(
        '(1) every individual who is in the State of California for other than a temporary or transitory purpose and'),
    const SelectableText(
        '(2) every individual who is domiciled in the State of California who is outside the State of California for a temporary or transitory purpose'),
    const SelectableText('All other individuals are defined as "non-residents."'),
    const SelectableText(
        'If this definition of "resident" applies to you, we must adhere to certain rights and obligations regarding your personal information.'),
    const SelectableText('What categories of personal information do we collect?'),
    const SelectableText(
        'We have collected the following categories of personal information in the past twelve (12) months:'),
    Table(
      border: TableBorder.all(),
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(),
        1: FlexColumnWidth(),
        2: FlexColumnWidth(),
      },
      children: const [
        TableRow(
          children: [
            SelectableText(
              'Category',
              style: header2,
            ),
            SelectableText(
              'Examples',
              style: header2,
            ),
            SelectableText(
              'Collected',
              style: header2,
            ),
          ],
        ),
        TableRow(
          children: [
            SelectableText('A. Identifiers'),
            SelectableText(
                'Contact details, such as real name, alias, postal address, telephone or mobile contact number, unique personal identifier, online identifier, Internet Protocol address, email address, and account name'),
            SelectableText('NO'),
          ],
        ),
        TableRow(
          children: [
            SelectableText(
                'B. Personal information categories listed in the California Customer Records statute'),
            SelectableText(
                'Name, contact information, education, employment, employment history, and financial information'),
            SelectableText('YES'),
          ],
        ),
        TableRow(
          children: [
            SelectableText(
                'C. Protected classification characteristics under California or federal law'),
            SelectableText('Gender and date of birth'),
            SelectableText('YES'),
          ],
        ),
        TableRow(
          children: [
            SelectableText('D. Commercial information'),
            SelectableText(
                'Transaction information, purchase history, financial details, and payment information'),
            SelectableText('NO'),
          ],
        ),
        TableRow(
          children: [
            SelectableText('E. Biometric information'),
            SelectableText('Fingerprints and voiceprints'),
            SelectableText('NO'),
          ],
        ),
        TableRow(
          children: [
            SelectableText('F. Internet or other similar network activity'),
            SelectableText(
                'Browsing history, search history, online behavior , interest data, and interactions with our and other websites, applications, systems, and advertisements'),
            SelectableText('NO'),
          ],
        ),
        TableRow(
          children: [
            SelectableText('G. Geolocation data'),
            SelectableText('Device location'),
            SelectableText('NO'),
          ],
        ),
        TableRow(
          children: [
            SelectableText(
                'H. Audio, electronic, visual, thermal, olfactory, or similar information'),
            SelectableText(
                'Images and audio, video or call recordings created in connection with our business activities'),
            SelectableText('NO'),
          ],
        ),
        TableRow(
          children: [
            SelectableText('I. Professional or employment-related information'),
            SelectableText(
                'Business contact details in order to provide you our services at a business level or job title, work history, and professional qualifications if you apply for a job with us'),
            SelectableText('NO'),
          ],
        ),
        TableRow(
          children: [
            SelectableText('J. Education Information'),
            SelectableText('Student records and directory information'),
            SelectableText('NO'),
          ],
        ),
        TableRow(
          children: [
            SelectableText('K. Inferences drawn from other personal information'),
            SelectableText(
                'Inferences drawn from any of the collected personal information listed above to create a profile or summary about, for example, an individual’s preferences and characteristics'),
            SelectableText('NO'),
          ],
        ),
      ],
    ),
    const SelectableText(
        'We may also collect other personal information outside of these categories instances where you interact with us in person, online, or by phone or mail in the context of:'),
    const SelectableText('    • Receiving help through our customer support channels;'),
    const SelectableText('    • Participation in customer surveys or contests; and'),
    const SelectableText(
        '    • Facilitation in the delivery of our Services and to respond to your inquiries.'),
    const SelectableText(
      'How do we use and share your personal information?',
      style: header2,
    ),
    const SelectableText(
        'More information about our data collection and sharing practices can be found in this privacy notice .'),
    const SelectableText(
        'You may contact us by email at  ryan@newquist.dev , or by referring to the contact details at the bottom of this document.'),
    const SelectableText(
        'If you are using an authorized agent to exercise your right to opt out we may deny a request if the authorized agent does not submit proof that they have been validly authorized to act on your behalf.'),
    const SelectableText(
      'Will your information be shared with anyone else?',
      style: header2,
    ),
    const SelectableText(
        'We may disclose your personal information with our service providers pursuant to a written contract between us and each service provider. Each service provider is a for-profit entity that processes the information on our behalf.'),
    const SelectableText(
        'We may use your personal information for our own business purposes, such as for undertaking internal research for technological development and demonstration. This is not considered to be "selling" of your personal information.'),
    const SelectableText(
        'RNDev  has not disclosed or sold any personal information to third parties for a business or commercial purpose in the preceding twelve (12) months. RNDev  will not sell personal information in the future belonging to website visitors, users, and other consumers.'),
    const SelectableText(
      'Your rights with respect to your personal data',
      style: header2,
    ),
    const SelectableText('Right to request deletion of the data — Request to delete'),
    const SelectableText(
        'You can ask for the deletion of your personal information. If you ask us to delete your personal information, we will respect your request and delete your personal information, subject to certain exceptions provided by law, such as (but not limited to) the exercise by another consumer of his or her right to free speech, our compliance requirements resulting from a legal obligation, or any processing that may be required to protect against illegal activities.'),
    const SelectableText('Right to be informed — Request to know'),
    const SelectableText('Depending on the circumstances, you have a right to know:'),
    const SelectableText('    • whether we collect and use your personal information;'),
    const SelectableText('    • the categories of personal information that we collect;'),
    const SelectableText('    • the purposes for which the collected personal information is used;'),
    const SelectableText('    • whether we sell your personal information to third parties;'),
    const SelectableText(
        '    • the categories of personal information that we sold or disclosed for a business purpose;'),
    const SelectableText(
        '    • the categories of third parties to whom the personal information was sold or disclosed for a business purpose; and'),
    const SelectableText(
        '    • the business or commercial purpose for collecting or selling personal information.'),
    const SelectableText(
        'In accordance with applicable law, we are not obligated to provide or delete consumer information that is de-identified in response to a consumer request or to re-identify individual data to verify a consumer request.'),
    const SelectableText(
        'Right to Non-Discrimination for the Exercise of a Consumer’s Privacy Rights'),
    const SelectableText(
        'We will not discriminate against you if you exercise your privacy rights.'),
    const SelectableText('Verification process'),
    const SelectableText(
        'Upon receiving your request, we will need to verify your identity to determine you are the same person about whom we have the information in our system. These verification efforts require us to ask you to provide information so that we can match it with information you have previously provided us. For instance, depending on the type of request you submit, we may ask you to provide certain information so that we can match the information you provide with the information we already have on file, or we may contact you through a communication method (e.g. , phone or email) that you have previously provided to us. We may also use other verification methods as the circumstances dictate.'),
    const SelectableText(
        'We will only use personal information provided in your request to verify your identity or authority to make the request. To the extent possible, we will avoid requesting additional information from you for the purposes of verification. However, if we cannot verify your identity from the information already maintained by us, we may request that you provide additional information for the purposes of verifying your identity and for security or fraud-prevention purposes. We will delete such additionally provided information as soon as we finish verifying you.'),
    const SelectableText('Other privacy rights'),
    const SelectableText('    • You may object to the processing of your personal information.'),
    const SelectableText(
        '    • You may request correction of your personal data if it is incorrect or no longer relevant, or ask to restrict the processing of the information.'),
    const SelectableText(
        '    • You can designate an authorized agent to make a request under the CCPA on your behalf. We may deny a request from an authorized agent that does not submit proof that they have been validly authorized to act on your behalf in accordance with the CCPA.'),
    const SelectableText(
        '    • You may request to opt out from future selling of your personal information to third parties. Upon receiving an opt-out request, we will act upon the request as soon as feasibly possible, but no later than fifteen (15) days from the date of the request submission.'),
    const SelectableText(
        '    • To exercise these rights, you can contact us  by email at ryan@newquist.dev , or by referring to the contact details at the bottom of this document. If you have a complaint about how we handle your data, we would like to hear from you.'),
    const SelectableText(
      '12. DO WE MAKE UPDATES TO THIS NOTICE?',
      style: header,
    ),
    const SelectableText(
        'In Short: Yes, we will update this notice as necessary to stay compliant with relevant laws.'),
    const SelectableText(
        'We may update this privacy notice from time to time. The updated version will be indicated by an updated "Revised" date and the updated version will be effective as soon as it is accessible. If we make material changes to this privacy notice, we may notify you either by prominently posting a notice of such changes or by directly sending you a notification. We encourage you to review this privacy notice frequently to be informed of how we are protecting your information.'),
    const SelectableText(
      '13. HOW CAN YOU CONTACT US ABOUT THIS NOTICE?',
      style: header,
    ),
    const SelectableText(
        'If you have questions or comments about this notice, you may email us at ryan@newquist.dev.'),
    const SelectableText(
      '14. HOW CAN YOU REVIEW, UPDATE, OR DELETE THE DATA WE COLLECT FROM YOU?',
      style: header,
    ),
    const SelectableText(
        'Based on the applicable laws of your country, you may have the right to request access to the personal information we collect from you, change that information, or delete it. To request to review, update, or delete your personal information, please email ryan@newquist.dev'),
  ];
}
