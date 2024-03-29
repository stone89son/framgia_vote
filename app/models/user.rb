class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
  has_many :votes

  validate :framgia_email
  FRAMGIA_EMAIL = ["kazunari.fujimoto@framgia.com",
"hiroaki.ishida@framgia.co.jp",
"hoang.truong.minh@framgia.com",
"hoang.cong.minh@framgia.com",
"nguyen.thi.hue@framgia.com",
"chu.anh.tuan@framgia.com",
"nguyen.thi.hoa@framgia.com",
"makoto.hirai@framgia.com",
"norifumi.homma@framgia.com",
"vu.xuan.dung@framgia.com",
"le.van.nghia@framgia.com",
"tran.thi.ngoc.bich@framgia.com",
"nguyen.dang.huy@framgia.com",
"le.dinh.vu@framgia.com",
"nguyen.thanh.linh@framgia.com",
"taihei.kobayashi@framgia.com",
"nguyen.van.tan@framgia.com",
"le.hoai.phuong@framgia.com",
"nguyen.thi.minh.ngoc@framgia.com",
"nguyen.thi.uoc.mo@framgia.com",
"le.duy.khanh@framgia.com",
"nghiem.tuan.minh@framgia.com",
"tran.quoc.huy@framgia.com",
"tran.ngoc.thang@framgia.com",
"daisuke.miyashiro@framgia.com",
"dinh.thanh.tam@framgia.com",
"do.xuan.huy@framgia.com",
"nguyen.quang.kien@framgia.com",
"pham.ngoc.tam@framgia.com",
"vu.ngoc.anh@framgia.com",
"le.quang.hoa@framgia.com",
"pham.cam.anh@framgia.com",
"takuma.miyake@framgia.com",
"le.van.ban@framgia.com",
"phung.hoang.bac@framgia.com",
"nguyen.thi.huyen@framgia.com",
"nguyen.van.giang@framgia.com",
"nguyen.ngoc.du@framgia.com",
"nguyen.thi.huong.thom@framgia.com",
"pham.tri.thai@framgia.com",
"nguyen.thi.ngoc@framgia.com",
"nguyen.ngoc.luu@framgia.com",
"ryohei.ota@framgia.com",
"tran.hoang.diep@framgia.com",
"do.thi.hai@framgia.com",
"tran.ba.trong@framgia.com",
"vu.thi.phuong.thao@framgia.com",
"koya.fukuda@framgia.com",
"tran.duc.toan@framgia.com",
"tran.duc.thang@framgia.com",
"nguyen.anh.tien@framgia.com",
"do.trung.kien@framgia.com",
"vu.van.cuong@framgia.com",
"vu.dang.tung@framgia.com",
"vu.thi.bich.ngoc@framgia.com",
"nguyen.the.vinh@framgia.com",
"takehiro.kato@framgia.com",
"cao.thanh.luc@framgia.com",
"le.thi.ngoc.anh@framgia.com",
"tran.van.luan@framgia.com",
"bach.dang.hung@framgia.com",
"nguyen.duy.phu@framgia.com",
"to.duc.thien@framgia.com",
"cao.duy.khanh@framgia.com",
"vu.van.chuyen@framgia.com",
"lai.le.le.linh@framgia.com",
"nguyen.thu.mai@framgia.com",
"le.thi.hien@framgia.com",
"do.xuan.duc@framgia.com",
"tran.nam.son@framgia.com",
"nguyen.khac.tiep@framgia.com",
"nguyen.quang.dung@framgia.com",
"hoang.thi.tuan.dung@framgia.com",
"nguyen.van.mui@framgia.com",
"nguyen.van.cuongb@framgia.com",
"truong.my.hai.ninh@framgia.com",
"dang.quang.minh@framgia.com",
"nguyen.thi.hue@framgia.com",
"nguyen.manh.ky@framgia.com",
"nguyen.thanh.tung@framgia.com",
"vu.thi.minh.hang@framgia.com",
"tran.thi.trinh@framgia.com",
"nguyen.huong.thanh@framgia.com",
"nguyen.duc.giang@framgia.com",
"nguyen.ngoc.tuan@framgia.com",
"tran.duc.liem@framgia.com",
"nghiem.hong.thai@framgia.com",
"nguyen.van.tung@framgia.com",
"ngo.thi.kieu.nga@framgia.com",
"pham.cao.dinh@framgia.com",
"tran.trong.hien@framgia.com",
"vu.van.yen@framgia.com",
"ha.van.huy@framgia.com",
"nguyen.minh.dac@framgia.com",
"ngo.quang.hung@framgia.com",
"tran.trong.ha@framgia.com",
"dang.thi.hien@framgia.com",
"pham.xuan.thanh@framgia.com",
"che.dinh.son@framgia.com",
"le.minh.thanh@framgia.com",
"nguyen.ngoc.thoai@framgia.com",
"phung.thi.hoai.ngoc@framgia.com",
"yushi.fukagawa@framgia.com",
"tran.thi.thuy.duong@framgia.com",
"nguyen.tuan.dung@framgia.com",
"dang.hoang.hieu@framgia.com",
"nguyen.quoc.huy@framgia.com",
"bui.duy.ngoc@framgia.com",
"bui.xuan.trung@framgia.com",
"do.trong.hung@framgia.com",
"mai.trung.nghia@framgia.com",
"le.ngoc.cuong@framgia.com",
"vu.hai.ninh@framgia.com",
"dinh.hoang.long@framgia.com",
"le.anh.duong@framgia.com",
"nguyen.xuan.son@framgia.com",
"nguyen.van.huong@framgia.com",
"tran.ngoc.anh@framgia.com",
"nguyen.thanh.tungb@framgia.com",
"vo.tuan.dung@framgia.com",
"hoang.the.hung@framgia.com",
"ha.the.trung@framgia.com",
"nguyen.hong.duong@framgia.com",
"nguyen.thinh.hung@framgia.com",
"vo.thanh.long@framgia.com",
"nguyen.thanh.tung@framgia.com",
"nguyen.quynh.trang@framgia.com",
"phan.hoang.minh@framgia.com",
"tran.van.cuong@framgia.com",
"bui.duy.doanh@framgia.com",
"truong.anh.tuan@framgia.com",
"le.ngoc.anh@framgia.com",
"tran.thi.hong.gam@framgia.com",
"pham.quy.hai@framgia.com",
"le.trung.kien@framgia.com",
"hoang.thi.dieu.linh@framgia.com",
"tran.thi.thu@framgia.com",
"nguyen.thi.hong.nhung@framgia.com",
"bui.van.hung@framgia.com",
"nguyen.hai.dang@framgia.com",
"nguyen.van.nam@framgia.com",
"nguyen.khac.hieu@framgia.com",
"le.thi.men@framgia.com",
"nguyen.van.canh@framgia.com",
"nguyen.thi.thuy.duong@framgia.com",
"vo.anh.hung@framgia.com",
"vo.van.do@framgia.com",
"ta.duy.ngoc@framgia.com",
"dinh.phuong.lien@framgia.com",
"do.thuy.linh@framgia.com",
"phan.dang.thanh@framgia.com",
"nguyen.sy.hieu@framgia.com",
"nguyen.xuan.cuong@framgia.com",
"nguyen.thi.thanh.hai@framgia.com",
"nguyen.thi.huyen.cham@framgia.com",
"nguyen.thi.thu.ha@framgia.com",
"pham.van.doanh@framgia.com",
"nguyen.cong.thanh@framgia.com",
"nguyen.van.phuc@framgia.com",
"truong.duc.nhat@framgia.com",
"than.thi.tho@framgia.com",
"vu.trung.kien@framgia.com",
"nguyen.the.thao@framgia.com",
"nguyen.trong.tam@framgia.com",
"bui.duy.son@framgia.com",
"dao.thanh.cam@framgia.com",
"tran.duc.phong@framgia.com",
"nguyen.khac.hai@framgia.com",
"dong.trong.hung@framgia.com",
"nguyen.thi.ngoc.tram@framgia.com",
"nguyen.thu.trang@framgia.com",
"duong.thanh.tung@framgia.com",
"le.si.hoang@framgia.com",
"nguyen.hoang.bach@framgia.com",
"nguyen.hai.yen@framgia.com",
"tran.thi.kim.thuy@framgia.com",
"bui.minh.hieu@framgia.com",
"bui.thi.thoa@framgia.com",
"nguyen.quang.hau@framgia.com",
"koya.homma@framgia.com",
"trieu.duc.phuong@framgia.com",
"ngo.van.duong@framgia.com",
"hoang.van.trinh@framgia.com",
"hoang.van.phuong@framgia.com",
"le.dinh.minh@framgia.com",
"luu.vinh.loc@framgia.com",
"bui.minh.thu@framgia.com",
"nguyen.van.duc@framgia.com",
"nghiem.xuan.duc@framgia.com",
"nguyen.tuan.khuong@framgia.com",
"lanh.hung.son@framgia.com",
"doan.dai.nghia@framgia.com",
"nguyen.hong.viet@framgia.com",
"tran.huy.hoang@framgia.com",
"ngo.dac.du@framgia.com",
"le.minh.tuan@framgia.com",
"nguyen.ke.ninh@framgia.com",
"nguyen.thi.kim.chi@framgia.com",
"nguyen.trung.hieu@framgia.com",
"vo.tai.tri@framgia.com",
"nguyen.tien.manh@framgia.com",
"nguyen.tan.thai@framgia.com",
"nguyen.ngoc.trung@framgia.com",
"nguyen.dan.linh.chi@framgia.com",
"hoang.van.tuan@framgia.com",
"vu.thi.yen@framgia.com",
"nguyen.duc.tu@framgia.com",
"nguyen.thuy.anh@framgia.com",
"nguyen.binh.dieu@framgia.com",
"jun.maeda@framgia.com",
"pham.thi.thuy@framgia.com",
"ngo.thi.thu.huong@framgia.com",
"nguyen.thanh.dat@framgia.com",
"tran.le.khuyen@framgia.com",
"vuong.xuan.hung@framgia.com",
"doan.viet.son@framgia.com",
"nguyen.thanh.tungd@framgia.com",
"nguyen.duc.tinh@framgia.com",
"pham.ky.khoi@framgia.com",
"hoang.minh.tuan@framgia.com",
"ngo.dinh.ngoc@framgia.com",
"pham.quang.dinh@framgia.com",
"tetsunori.yuasa@framgia.com",
"phan.thanh.hai@framgia.com",
"tran.quoc.dat@framgia.com",
"nguyen.thi.huong.quynh@framgia.com",
"pham.van.tung@framgia.com",
"nguyen.ngoc.truong@framgia.com",
"nguyen.thi.ngocb@framgia.com",
"nguyen.van.linh@framgia.com",
"dam.sam.nang@framgia.com",
"phorn.sopheak@framgia.com",
"lim.kimhuor@framgia.com",
"yong.sokheng@framgia.com",
"ngeng.chhengkim@framgia.com",
"takuya.okazaki@framgia.com",
"dao.minh.duc@framgia.com",
"ngo.duy.khanh@framgia.com",
"tran.van.nhat@framgia.com",
"nguyen.tan.duc@framgia.com",
"nguyen.thi.thu.hab@framgia.com",
"vu.phuong.anh@framgia.com",
"nguyen.van.tu@framgia.com",
"bui.quang.tan@framgia.com",
"phan.van.huy@framgia.com",
"nguyen.van.thuan@framgia.com",
"nguyen.thanh.nga@framgia.com",
"phung.thi.hang@framgia.com",
"dinh.duy.thanh@framgia.com",
"nguyen.minh.coi@framgia.com",
"phan.nguyen.viet.duc@framgia.com",
"tran.hoang.long@framgia.com",
"tran.duc.son@framgia.com",
"vu.ngoc.bich@framgia.com",
"vu.duc.dat@framgia.com",
"nguyen.duc.phuong@framgia.com",
"kaoru.yokota@framgia.com",
"pham.thanh.hoa@framgia.com",
"pham.xuan.dung@framgia.com",
"nguyen.thanh.binh@framgia.com",
"hor.norin@framgia.com",
"sreang.rathanak@framgia.com",
"vu.van.trung@framgia.com",
"pham.duc.minh@framgia.com",
"nguyen.huu.manh@framgia.com",
"nodoka.fukuda@framgia.com",
"bui.van.quynh@framgia.com",
"eiji.mishiro@framgia.com",
"pham.viet.anh@framgia.com",
"soma.ichikawa@framgia.com",
"noboru.wada@framgia.com",
"kouch.chivorn@framgia.com",
"nguyen.hong.son@framgia.com",
"vuong.tung.long@framgia.com",
"ngo.van.thien@framgia.com",
"tran.van.tuan@framgia.com",
"nguyen.hoang.hao@framgia.com",
"nguyen.phuong.lan@framgia.com",
"doan.thu.phuong@framgia.com",
"le.thi.thanh.thao@framgia.com",
"nguyen.thi.hien@framgia.com",
"vu.minh.duc@framgia.com",
"nguyen.van.truong@framgia.com",
"pham.huy.cuong@framgia.com",
"michal.plachy@framgia.com",
"do.tuan.minh@framgia.com",
"nguyen.duy.anh@framgia.com",
"tran.thi.trang@framgia.com",
"kieu.viet.hung@framgia.com",
"nguyen.van.dungb@framgia.com",
"phan.thanh.giang@framgia.com",
"nguyen.quang.tung@framgia.com",
"tran.huu.tai@framgia.com",
"bui.xuan.hien@framgia.com",
"tran.thanh.tung@framgia.com",
"wada.noboru@framgia.com",
"nguyen.thanh.cong@framgia.com",
"pham.thi.kim.oanh@framgia.com",
"luong.viet.dung@framgia.com",
"trinh.duc.duy@framgia.com",
"pham.duc.anh@framgia.com",
"nguyen.duc.vinh@framgia.com",
"nguyen.bao.quoc@framgia.com",
"vu.hoang.anh@framgia.com",
"nguyen.quang.huy@framgia.com",
"bach.ngoc.hoai@framgia.com",
"pham.xuan.lu@framgia.com",
"nguyen.van.thieu@framgia.com",
"nguyen.tien.trung@framgia.com",
"nguyen.viet.bao@framgia.com",
"bui.huu.tuan@framgia.com",
"nguyen.xuan.tung@framgia.com",
"dao.ngoc.thuy@framgia.com",
"nguyen.minh.ngoc@framgia.com",
"le.the.vinh@framgia.com",
"ngo.duy.son@framgia.com",
"le.cong.phuc@framgia.com",
"mau.thi.thanh.nhan@framgia.com",
"ta.minh.thanh@framgia.com",
"nguyen.ngoc.kieu@framgia.com",
"phan.quoc.hung@framgia.com",
"miho.fukagawa@framgia.com",
"tran.minh.hang@framgia.com",
"nguyen.xuan.quang@framgia.com",
"nguyen.thi.khanh.van@framgia.com",
"nguyen.thi.thu.hac@framgia.com",
"nguyen.viet.manh@framgia.com",
"tran.thanh.nghia@framgia.com",
"hoang.ngoc.dai@framgia.com",
"hoang.van.vuong@framgia.com",
"khairul.alam.licon@framgia.com",
"md.muzahidul.karim@framgia.com",
"mainul.haque@framgia.com",
"nguyen.van.duyet@framgia.com",
"tran.thi.hong.quyen@framgia.com",
"nguyen.huy.quyet@framgia.com",
"pham.minh.huong@framgia.com",
"nguyen.viet.anh@framgia.com",
"tang.hoai.duy@framgia.com",
"saki.sugiyama@framgia.com",
"dinh.xuan.son@framgia.com",
"hoang.van.huu@framgia.com",
"tran.thi.thin@framgia.com",
"mai.kim.chi@framgia.com",
"nguyen.quang.manh@framgia.com",
"can.van.nghi@framgia.com",
"nguyen.dac.truong@framgia.com",
"nguyen.hoang.nam@framgia.com",
"nguyen.quang.duy@framgia.com",
"nguyen.manh.tan@framgia.com",
"nguyen.van.khanh@framgia.com",
"nguyen.huu.quyen@framgia.com",
"luu.vinh.locb@framgia.com",
"do.minh.hai@framgia.com",
"phan.lac.phuc@framgia.com",
"nguyen.ngoc.vinh@framgia.com",
"nguyen.thi.phuong.mai@framgia.com",
"dao.van.tuan@framgia.com",
"dinh.tung@framgia.com",
"truong.tuan.quang@framgia.com",
"dang.quyet.tien@framgia.com",
"bui.thi.ngoc@framgia.com",
"phung.xuan.tiep@framgia.com",
"dao.duy.dat@framgia.com",
"pham.trung.doan@framgia.com",
"nguyen.tien.manhb@framgia.com",
"shiori.matsuyama@framgia.com",
"nguyen.thi.thu@framgia.com",
"truong.minh.thang@framgia.com",
"han.van.hiep@framgia.com",
"dang.thi.thanh.hoa@framgia.com",
"dao.hong.thuan@framgia.com",
"hoang.the.toan@framgia.com",
"nguyen.anh.tuan@framgia.com",
"vuong.huy.hoang@framgia.com",
"hoang.thi.nhung@framgia.com",
"nguyen.thi.trang@framgia.com",
"nguyen.truong.thanh@framgia.com",
"le.hong.son@framgia.com",
"masaya.kizaki@framgia.com",
"dao.dinh.cuong@framgia.com",
"minami.watanabe@framgia.com",
"nguyen.van.hien@framgia.com",
"nguyen.thai.son@framgia.com",
"truong.loc.binh@framgia.com",
"nguyen.hai.ninh@framgia.com",
"vu.xuan.lam@framgia.com",
"hoang.van.tuanb@framgia.com",
"nguyen.van.toan@framgia.com",
"ta.cao.thanh@framgia.com",
"muu.van.duy@framgia.com",
"nguyen.van.quy@framgia.com",
"nguyen.anh.tuyen@framgia.com",
"doan.thi.phuong.thao@framgia.com",
"vu.thi.nga@framgia.com",
"truong.thi.thao@framgia.com",
"ta.duy.anh@framgia.com",
"dang.trung.kien@framgia.com",
"la.van.dang@framgia.com",
"duong.thi.van@framgia.com",
"dinh.danh.phu@framgia.com",
"le.tuan.minh@framgia.com",
"tran.thu.trang@framgia.com",
"nguyen.van.dung@framgia.com",
"hoang.dang.khanh@framgia.com",
"nguyen.dinh.huan@framgia.com",
"hoang.van.quan@framgia.com",
"nguyen.thi.tuyen@framgia.com",
"doan.viet.tung@framgia.com",
]

  MANAGER = [
    "nguyen.xuan.son@framgia.com",
    "nguyen.ngoc.tuan@framgia.com",
    "chu.anh.tuan@framgia.com",
    "nguyen.thi.minh.ngoc@framgia.com",
    "vu.xuan.dung@framgia.com"
  ]

  before_create :set_manager

  def canlidate_voted? canlidate
    award = canlidate.award
    vote = votes.where(award: award).first
    vote && vote.canlidate == canlidate
  end

  def award_voted? award
    votes.where(award: award).first.present?
  end

  private
  def framgia_email
    if email.present? && !FRAMGIA_EMAIL.include?(email)
      errors.add(:email, "must be Framgia email")
    end
  end

  def set_manager
    if MANAGER.include? email
      self.manager_flg = true
    end
  end
end
