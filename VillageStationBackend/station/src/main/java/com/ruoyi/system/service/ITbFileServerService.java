package com.ruoyi.system.service;

import com.ruoyi.system.domain.TbFileServer;

import java.util.List;

/**
 * 文件服务器Service接口
 * 
 * @author ruoyi
 * @date 2023-10-05
 */
public interface ITbFileServerService 
{
    /**
     * 查询文件服务器
     * 
     * @param fileId 文件服务器主键
     * @return 文件服务器
     */
    public TbFileServer selectTbFileServerByFileId(Long fileId);

    /**
     * 查询文件服务器列表
     * 
     * @param tbFileServer 文件服务器
     * @return 文件服务器集合
     */
    public List<TbFileServer> selectTbFileServerList(TbFileServer tbFileServer);

    /**
     * 新增文件服务器
     * 
     * @param tbFileServer 文件服务器
     * @return 结果
     */
    public int insertTbFileServer(TbFileServer tbFileServer);

    /**
     * 修改文件服务器
     * 
     * @param tbFileServer 文件服务器
     * @return 结果
     */
    public int updateTbFileServer(TbFileServer tbFileServer);

    /**
     * 批量删除文件服务器
     * 
     * @param fileIds 需要删除的文件服务器主键集合
     * @return 结果
     */
    public int deleteTbFileServerByFileIds(Long[] fileIds);

    /**
     * 删除文件服务器信息
     * 
     * @param fileId 文件服务器主键
     * @return 结果
     */
    public int deleteTbFileServerByFileId(Long fileId);
}
