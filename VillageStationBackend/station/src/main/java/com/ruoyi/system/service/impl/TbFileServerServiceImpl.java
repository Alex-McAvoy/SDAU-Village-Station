package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.system.domain.TbFileServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TbFileServerMapper;
import com.ruoyi.system.service.ITbFileServerService;

/**
 * 文件服务器Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-10-05
 */
@Service
public class TbFileServerServiceImpl implements ITbFileServerService 
{
    @Autowired
    private TbFileServerMapper tbFileServerMapper;

    /**
     * 查询文件服务器
     * 
     * @param fileId 文件服务器主键
     * @return 文件服务器
     */
    @Override
    public TbFileServer selectTbFileServerByFileId(Long fileId)
    {
        return tbFileServerMapper.selectTbFileServerByFileId(fileId);
    }

    /**
     * 查询文件服务器列表
     * 
     * @param tbFileServer 文件服务器
     * @return 文件服务器
     */
    @Override
    public List<TbFileServer> selectTbFileServerList(TbFileServer tbFileServer)
    {
        return tbFileServerMapper.selectTbFileServerList(tbFileServer);
    }

    /**
     * 新增文件服务器
     * 
     * @param tbFileServer 文件服务器
     * @return 结果
     */
    @Override
    public int insertTbFileServer(TbFileServer tbFileServer)
    {
        tbFileServer.setCreateTime(DateUtils.getNowDate());
        return tbFileServerMapper.insertTbFileServer(tbFileServer);
    }

    /**
     * 修改文件服务器
     * 
     * @param tbFileServer 文件服务器
     * @return 结果
     */
    @Override
    public int updateTbFileServer(TbFileServer tbFileServer)
    {
        tbFileServer.setUpdateTime(DateUtils.getNowDate());
        return tbFileServerMapper.updateTbFileServer(tbFileServer);
    }

    /**
     * 批量删除文件服务器
     * 
     * @param fileIds 需要删除的文件服务器主键
     * @return 结果
     */
    @Override
    public int deleteTbFileServerByFileIds(Long[] fileIds)
    {
        return tbFileServerMapper.deleteTbFileServerByFileIds(fileIds);
    }

    /**
     * 删除文件服务器信息
     * 
     * @param fileId 文件服务器主键
     * @return 结果
     */
    @Override
    public int deleteTbFileServerByFileId(Long fileId)
    {
        return tbFileServerMapper.deleteTbFileServerByFileId(fileId);
    }
}
