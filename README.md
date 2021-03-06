* เป็นเนื้อหาเกี่ยวกับการใช้คำสั่งใน cmd ของ robot -help 
โดยจะยกตัวอย่างมาให้ลองใช้งานกันดูนะครับ 
* ให้ทุกคน Clone ตัวอย่างลงเครื่องเลยนะครับ แล้วเรามาลองใช้คำสั่งตามผมกันเลยครับ

## อธิบายฉบับย่อไฟล์ try_to_fail.robot 

ขออธิบายโค้ดคร่าวๆนะครับในไฟล์นี้ Test Case แบ่งเป็น 2 ส่วนครับ 
1. Stable test จะรันได้ผล PASS ตลอดครับ
2. Unstable test เคสนี้จะมี PASS บ้าง FAIL บ้าง
ซึ่งในโค้ดชุดนี้เราต้องการเพื่อจะแนะนำคำสั่งใน cmd นั่นเองครับ

## มาเริ่มกันเลยครับ
1. git clone https://github.com/kachain2019/try_to_fail.git ]  ลงเครื่องตัวเองเลยครับ

2. เปิด Command  cmd  พิมพ์คำสั่ง  robot -help  
   เราจะเห็นว่ามันมี Options มากมายหรือที่เรียกว่า User Guild นั่นเองครับ
   
3. แนะนำให้ใช้ Editor เป็น Visual Code นอครับหรือที่เรียกติดปากว่า VS Code 

4. ผมจะเลือก  Options  เกี่ยวกับไฟล์ให้ทุกคนลองดูดังนี้ครับ (ใช้คำสั่งที่ TERMINAl ของ Visual Code แล้วดูผลลัพธ์ได้เลยครับ)

    * 4.1  รูปแบบคำสั่ง >> robot -T (filename).robot  
    คำสั่ง >> robot -T try_to_fail.robot  
    [ Option -T  คือ ไฟล์ report,log,output จะถูกแปะ -ปีเดือนวัน-เวลา
     ตัวอย่างผลลัพธ์  report-20190426-150840.html ]
    
    * 4.2  รูปแบบคำสั่ง >> robot -o (ชื่อไฟล์ที่ต้องการตั้ง).xml (filename).robot  
    คำสั่ง >> robot -o myTest try_to_fail.robot  
    [ Option -o  คือ การกำหนดชื่อไฟล์ output.xml ให้เป็นชื่อไฟล์ที่เราต้องการ
     ตัวอย่างผลลัพธ์  myTest.xml ]

    * 4.3  รูปแบบคำสั่ง >> robot -l (ชื่อไฟล์ที่ต้องการตั้ง).html (filename).robot  
    คำสั่ง >> robot -l myLog try_to_fail.robot  
    [ Option -l  คือ การกำหนดชื่อไฟล์ log.html ให้เป็นชื่อไฟล์ที่เราต้องการ
     ตัวอย่างผลลัพธ์  myLog.html ]
     
    * 4.4  รูปแบบคำสั่ง >> robot -r (ชื่อไฟล์ที่ต้องการตั้ง).html (filename).robot  
    คำสั่ง >> robot -r myReport try_to_fail.robot  
    [ Option -r  คือ การกำหนดชื่อไฟล์ report.html ให้เป็นชื่อไฟล์ที่เราต้องการ
     ตัวอย่างผลลัพธ์  myReport.html ]
  
          *** เราสามารถรวม  Option ที่ 4.2 - 4.4 ใช้ทีเดียวได้นะครับ
          คำสั่ง >> robot -r myReport -l myLog -o myOutput  try_to_fail.robot
          ผลลัพธ์คือเราจะได้ชื่อไฟล์ log,output.report ตามที่เรากำหนดครับ
 
 5. มาดู Option  ที่เกี่ยวกับ report ของการรันกันต่อครับ
 
     * 5.1  Run คำสั่ง >>   robot --output result01.xml try_to_fail.robot 
     รันจนกว่าจะเจอเคส FAIL นะครับ เมื่อมัน FAIL แล้ว
     ให้รันคำสั่ง >> robot --rerunfailed result01.xml --output result02.xml try_to_fail.robot
     
           อธิบาย [ Option --rerunfailed ] มันคือการสั่งให้รันไฟ์ result01.xml ที่ผมให้รันให้เจอเคส FAIL แล้วให้เราเก็บผลของการรันที่ไฟล์  result02.xml ครับ
  
  6. มาดู Option  ใน rebot กันสักตัวอย่างครับ พิมพ์คำสั่ง rebot -help เพื่อดู User Guild ของ rebot ได้เลยครับ
 
     * 6.1  รูปแบบคำสั่ง >>  rebot --merge ชื่อไฟล์ที่1.xml ชื่อไฟล์ที่2.xml 
     
    [Option --merge คือการรวม report ผลของการเทสจากไฟล์ที่เรากำหนดในรูปแบบคำสั่งข้างบนครับ]
     
         ให้รันคำสั่ง >> rebot --merge result01.xml result02.xml  
         
     ลองเปิดไฟล์ report ดูครับจะเห็นผลลัพธ์ของคำสั่ง
     
# ลองเล่นจะเป็นไร...

     แปะลิ้งไว้ให้ลองเล่นดูน่ะครับ ลองทำให้กดปุ่ม SHOW PAGE LOADER เข้าไป แล้วให้กดปุ่ม GO BACK กลับมาครับ
  
  Link : https://tympanus.net/Development/PageLoadingEffects/
     
   
   ￼

