export MINIO_ROOT_USER=admin
export MINIO_ROOT_PASSWORD=Sdau:123

nohup ./minio server /mnt/data --console-address ":8888" > minio.log 2>&1 &
