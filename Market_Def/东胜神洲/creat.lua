local lfs = require("lfs")  -- 引入文件系统库  

-- 定义目标目录  
local target_directory = "C:\\Users\\Administrator\\Desktop\\西游素材\\特效素材\\传奇装备框素材 多色装备框背包效果 动态包袱内观 PNG格式 21组"  

-- 创建目录函数  
local function create_directory(dir)  
    if lfs.attributes(dir) == nil then  
        lfs.mkdir(dir)  
    end  
end  

-- 创建文件夹函数  
local function create_folders(dir)  
    for i = 1, 20 do  
        local folder_path = dir .. "\\" .. i  -- 文件夹路径  
        local result = lfs.mkdir(folder_path)  -- 创建文件夹  
        if result then  
            print("已创建文件夹: " .. folder_path)  -- 输出创建成功的信息  
        else  
            print("无法创建文件夹: " .. folder_path)  -- 输出创建失败的信息  
        end  
    end  
end  

-- 主函数  
local function main()  
    create_directory(target_directory)  -- 先创建目标目录  
    create_folders(target_directory)  -- 然后创建子文件夹  
end  

main()  -- 执行主函数