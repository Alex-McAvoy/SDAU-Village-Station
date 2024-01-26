package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.TbFileServer;

import java.util.List;

/**
 * 文件服务器Mapper接口
 * 
 * @author ruoyi
 * @date 2023-10-05
 */
public interface TbFileServerMapper 
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
     * 删除文件服务器
     * 
     * @param fileId 文件服务器主键
     * @return 结果
     */
    public int deleteTbFileServerByFileId(Long fileId);

    /**
     * 批量删除文件服务器
     * 
     * @param fileIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbFileServerByFileIds(Long[] fileIds);
}
