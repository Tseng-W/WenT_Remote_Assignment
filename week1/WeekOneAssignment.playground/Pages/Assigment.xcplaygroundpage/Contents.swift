//: [Previous](@previous)

/*:
 # Assigment 1: Git & GitHub
 ## Q2:
 * git status:  顯示當前工作Branch名稱、將要Commit的檔案、Git尚未追蹤的檔案，以及比對Staging Area／Repository針對有修改的文件顯示對應狀態
 * git add: 將未被Git追蹤的檔案新增至暫存變更Staging Area
 * git commit: 將Staging Area中的  異動資料提交至Repository，並記錄對應的提交內容說明
 * git log: 顯示版本歷史，s顯示初始化與每一次Commit、Merge的詳細數據，檔案異動、分支異動、雜湊碼、作者、時間等；並可依照需求調整顯示的範圍、詳細程度與呈現方式
 * git push [Repo_name] [Branch_name]: 將指定本地Branch Staging Area內容推送到遠端Repository
 * git remote -v: 顯示當前遠端版本保存庫列表，若未指定，首次添加的保存庫代號為origin
 * git branch: 顯示本機所有分支名稱
    * git branch <Branch_name>: 新增分支，創建完後搭配 git checkout <Branch_name> 跳轉分支，或直接使用 git checkout -b <Branch_name> 一次創建與跳轉分支
 * fork: 為了針對自身無修改權限的專案，複製一份副本以進行調整，於調整完畢後，可發起Pull Request讓專案擁有者參考並判斷是否進行變更
 
 ## Q3:
 ### 創建新Repository
 1.    Web登入GitHub並於首頁建立Repository
 2.    取得新Repository Https位址
 
 ### 建立本地數據並上傳
 1.    git init：初始化Git版控環境
 2.    git clone https://github.com/Tseng-W/WenT_Remote_Assignment.git：複製既有遠端儲存庫內容，並加入remote清單內
 3.    touch test.txt：於工作環境建立新檔案
 4.    git add ‘test.txt’：將新檔案加入暫存區
 5.    git commit -m “Add temp file”：將檔案加入本地儲存庫
 6.    git push origin main：將本地儲存庫分支推送到遠端儲存庫
*/

//: [Next](@next)
