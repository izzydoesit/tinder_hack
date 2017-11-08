require_relative './test_helper'

module SwipePage
  FACEBOOK_BUTTON = {xpath: '//*[@id="modal-manager"]/div/div/div[2]/div[1]/div/div[3]/button[1]'}
  EMAIL_INPUT = {xpath: '//*[@id="email"]'}
  PASSWORD_INPUT = {xpath: ''}
  LIKE_BUTTON = {css: '#content > div > span > div > div.H\28 100\25 \29.App__body.Pos\28 r\29.Z\28 0\29.Ov\28 h\29 > div > main > div > div > div > div.recsCardboard.W\28 100\25 \29.Mt\28 a\29 > div.CenterAlign.recsGamepad.Pos\28 r\29.My\28 16px\29.Py\28 0\29.Px\28 16px\29.Px\28 8px\29 --ml.D\28 f\29.Jc\28 sb\29.Ai\28 c\29 > button.button.Lts\28 \24 ls-s\29.Z\28 0\29.Whs\28 nw\29.Cur\28 p\29.Tt\28 u\29.Bdrs\28 50\25 \29.P\28 0\29.Fw\28 \24 semibold\29.recsGamepad__button.D\28 b\29.Bgc\28 \23 fff\29.recsGamepad__button--like > span > svg > g > g'}
end