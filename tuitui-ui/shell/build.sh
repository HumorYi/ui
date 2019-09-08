###
# @Author: Bamboo
# @AuthorEmail: bamboo8493@126.com
# @Date: 2019-08-16 17:00:59
# @Description:
# @LastEditors:
# @LastEditorsEmail:
# @LastEditTime: 2019-08-18 14:09:35
# @LastEditorsDescription:
###

# 清空dist目录中的旧文件
echo '正在清除原有dist文件...'
rm -rf dist

# 打包出不压缩的CSS文件tuitui-ui.css
echo '正在生成tuitui-ui.css文件...'
npx postcss src/tuitui-ui.css -o dist/tuitui-ui.css -u postcss-import autoprefixer --no-map

# 打包出被压缩的CSS文件tuitui-ui.min.css
echo '正在生成tuitui-ui.min.css文件...'
npx postcss src/tuitui-ui.css -o dist/tuitui-ui.min.css -u postcss-import autoprefixer cssnano --no-map