class Phah4Zi7Tshue7Tsu1Liau7Controller < ApplicationController
  def index
    if params[:zi7].nil? or params[:zi7].empty?
      @su5_tian2s = Su5Tian2.all
      @標題='噶哈巫辭典全部資料'
      @這馬=''
    else
      查字串='%'+params[:zi7]+'%'
#      @su5_tian2s = Su5Tian2.where(
#        '噶哈巫語教材標記法 LIKE ? or 噶哈巫語潘永歷標記法 LIKE ?  or 中文譯解 LIKE ?  or 臺語譯解 LIKE ?  or 參考 LIKE ? ',
#        查字串,查字串,查字串,查字串,查字串)
      @su5_tian2s = Su5Tian2.where(
        #'篇名 LIKE  ? or 編號  LIKE ? or 類名  LIKE ? or '+
        '噶哈巫語教材標記法 LIKE ? or 噶哈巫語潘永歷標記法 LIKE ?  or 中文譯解 LIKE ?  or 臺語譯解 LIKE ?  or 參考 LIKE ? ',
        #查字串,查字串,查字串,
        查字串,查字串,查字串,查字串,查字串)
      @標題='噶哈巫辭典：'+params[:zi7]
      @這馬=params[:zi7]
    end
  end
  def show
  end
end
