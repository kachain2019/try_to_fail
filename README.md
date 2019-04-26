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

4. ผมจะเลือก  Options  ให้ทุกคนลองดูดังนี้ครับ (ใช้คำสั่งที่ TERMINAl ของ Visual Code แล้วดูผลลัพธ์ได้เลยครับ)

    * 4.1  รูปแบบคำสั่ง >> robot -T (filename).robot  
    คำสั่ง >> robot -T try_to_fail.robot  
    [Option -T คือ ไฟล์ report,log,output จะถูกแปะ -ปีเดือนวัน-เวลา
    ตัวอย่างผลลัพธ์  report-20190426-150840.html]
    
    * 4.2  รูปแบบคำสั่ง >> robot -o (ชื่อไฟล์ที่ต้องการตั้ง).xml (filename).robot  
    คำสั่ง >> robot -o myTest.xml try_to_fail.robot  
    [Option -o คือ การกำหนดชื่อไฟล์ output.xml ให้เป็นชื่อไฟล์ที่เราต้องการ
    ตัวอย่างผลลัพธ์  myTest.xml

    * 4.3  รูปแบบคำสั่ง >> robot -l (ชื่อไฟล์ที่ต้องการตั้ง).html (filename).robot  
    คำสั่ง >> robot -l myLog.html try_to_fail.robot  
    [Option -l คือ การกำหนดชื่อไฟล์ log.html ให้เป็นชื่อไฟล์ที่เราต้องการ
    ตัวอย่างผลลัพธ์  myLog.html
