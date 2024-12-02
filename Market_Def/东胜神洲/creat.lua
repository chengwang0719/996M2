local lfs = require("lfs")  -- �����ļ�ϵͳ��  

-- ����Ŀ��Ŀ¼  
local target_directory = "C:\\Users\\Administrator\\Desktop\\�����ز�\\��Ч�ز�\\����װ�����ز� ��ɫװ���򱳰�Ч�� ��̬�����ڹ� PNG��ʽ 21��"  

-- ����Ŀ¼����  
local function create_directory(dir)  
    if lfs.attributes(dir) == nil then  
        lfs.mkdir(dir)  
    end  
end  

-- �����ļ��к���  
local function create_folders(dir)  
    for i = 1, 20 do  
        local folder_path = dir .. "\\" .. i  -- �ļ���·��  
        local result = lfs.mkdir(folder_path)  -- �����ļ���  
        if result then  
            print("�Ѵ����ļ���: " .. folder_path)  -- ��������ɹ�����Ϣ  
        else  
            print("�޷������ļ���: " .. folder_path)  -- �������ʧ�ܵ���Ϣ  
        end  
    end  
end  

-- ������  
local function main()  
    create_directory(target_directory)  -- �ȴ���Ŀ��Ŀ¼  
    create_folders(target_directory)  -- Ȼ�󴴽����ļ���  
end  

main()  -- ִ��������