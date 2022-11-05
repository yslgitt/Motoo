import MyAssets from "../../components/wallet/MyAssets";
import * as React from "react";
import PropTypes from "prop-types";
import Tabs from "@mui/material/Tabs";
import Tab from "@mui/material/Tab";
import Typography from "@mui/material/Typography";
import Box from "@mui/material/Box";
import Grid from "@mui/material/Grid";
import { useState } from "react";
import classes from "./AccountDetailPage.module.css";
import Modal from "@mui/material/Modal";
import RealizedPL from "../../components/wallet/RealizedPL";
import AccountHistory from "../../components/wallet/AccountHistory";
import { useNavigate } from "react-router-dom";
import { useParams } from "react-router-dom";

const style = {
  position: "absolute",
  top: "40%",
  left: "50%",
  transform: "translate(-50%, -50%)",
  width: 324,
  height: 225,
  bgcolor: "background.paper",
  boxShadow: 24,
  p: 4,
  borderRadius: 5,
};

function TabPanel(props) {
  const { children, value, index, ...other } = props;

  return (
    <div
      role="tabpanel"
      hidden={value !== index}
      id={`simple-tabpanel-${index}`}
      aria-labelledby={`simple-tab-${index}`}
      {...other}
    >
      {value === index && (
        <Box sx={{ p: 3 }}>
          <div>{children}</div>
        </Box>
      )}
    </div>
  );
}

TabPanel.propTypes = {
  children: PropTypes.node,
  index: PropTypes.number.isRequired,
  value: PropTypes.number.isRequired,
};

function a11yProps(index) {
  return {
    id: `simple-tab-${index}`,
    "aria-controls": `simple-tabpanel-${index}`,
  };
}

function AccountDetailPage() {
  const [value, setValue] = useState(0);
  const [nowEdit, setNowEdit] = useState(false);
  const [openDeleteModal, setDeleteModalOpen] = useState(false);
  const navigate = useNavigate();
  function backToMyWallet() {
    navigate(`/wallet`);
  }

  const params = useParams();
  const id = params.id;
  const handleDeleteModalOpen = () => {
    setDeleteModalOpen(true);
    setShowSettings(false);
  };
  const handleDeleteModalClose = () => setDeleteModalOpen(false);

  const handleChange = (event, newValue) => {
    setValue(newValue);
  };

  const [showSettings, setShowSettings] = useState(false);
  function settingOpen() {
    setShowSettings(true);
  }
  function settingClose() {
    setShowSettings(false);
  }
  function editOpen() {
    setShowSettings(false);
    setNowEdit(true);
  }
  function SettingShow() {
    if (showSettings) {
      return (
        <>
          <div onClick={settingClose} className={classes.exceptSetting} />
          <div className={classes.settingBox}>
            <div className={classes.txts} onClick={editOpen}>계좌명 수정하기</div>
            <hr />
            <div className={classes.txts} onClick={handleDeleteModalOpen}>계좌 삭제</div>
          </div>
        </>
      );
    }
  }

  function EditShow() {
    const [accountName, setAccountName] = useState("유저가설정한계좌");
    const handleInputChange = (event) => {
      setAccountName(event.target.value);
    };

    // 수정했을때, 이 함수 안에서 POST 요청 들어가야함.
    const handleOnKeyPress = (event) => {
      if (event.key === "Enter") {
        setNowEdit(false);
      }
      setNowEdit(false);
    };
    if (nowEdit) {
      return (
        <div>
          <input
            type="text"
            maxLength={8}
            className={classes.editInput}
            onChange={handleInputChange}
            value={accountName}
            onKeyPress={handleOnKeyPress}
          />
          <img
            onClick={handleOnKeyPress}
            src={`${process.env.PUBLIC_URL}/wallet/editIcon.svg`}
            alt=""
          />
        </div>
      );
    }
    return <div className={classes.accountname}>{accountName}</div>;
  }

  // 삭제했을 때, 남은 자기계좌 있는지 확인후에, 이 함수 안에서 DELETE 요청 들어가야함.
  // 삭제하고나서 redirect해서 지갑 화면으로 돌아가야함
  function deleteSubmit() {
    handleDeleteModalClose(false);
    backToMyWallet();
  }

  return (
    <div className={classes.out}>
      <h1>계좌상세페이지입니다</h1>
      <h1>{id}</h1>
      <Modal open={openDeleteModal} onClose={handleDeleteModalClose}>
        <Box className={classes.deletebox} sx={style}>
          <div className={classes.title}>정말 삭제하시겠습니까?</div>
          <div className={classes.graybox}>
            계좌를 삭제하면 <br></br> 해당 계좌의 구매 주식, 자산들이 같이 삭제되어요!
          </div>
          <div className={classes.dltbtn} onClick={deleteSubmit}>삭제하기</div>
        </Box>
      </Modal>
      <Grid
        container
        direction="row"
        justifyContent="space-between"
        alignItems="center"
      >
        <EditShow />
        <div onClick={settingOpen}>
          <img
            className={classes.dot}
            src={`${process.env.PUBLIC_URL}/wallet/settingIcon.svg`}
            alt=""
          />
        </div>
      </Grid>
      <div className={classes.hrline}></div>
      <SettingShow />
      <Box sx={{ width: "100%" }}>
        <Box sx={{ borderBottom: 0, borderColor: "divider" }}>
          <Tabs
            value={value}
            onChange={handleChange}
            aria-label="basic tabs example"
            sx={{ "& .MuiTabs-indicator": { bgcolor: "white" } }}
          >
            <Tab
              label={
                <Typography
                  fontSize="4vw"
                  fontWeight="600"
                  color={value === 0 ? "#43B8B1" : "#929E9E"}
                  fontFamily="Pretendard"
                >
                  계좌자산
                </Typography>
              }
              sx={{
                "&.Mui-selected": {
                  color: "rgba(0, 0, 0, 0)",
                },
              }}
              {...a11yProps(0)}
            />
            <Tab
              label={
                <Typography
                  fontSize="4vw"
                  fontWeight="600"
                  color={value === 1 ? "#43B8B1" : "#929E9E"}
                  fontFamily="Pretendard"
                >
                  판매손익
                </Typography>
              }
              sx={{
                "&.Mui-selected": {
                  color: "rgba(0, 0, 0, 0)",
                },
              }}
              {...a11yProps(1)}
            />
            <Tab
              label={
                <Typography
                  fontSize="4vw"
                  fontWeight="600"
                  color={value === 2 ? "#43B8B1" : "#929E9E"}
                  fontFamily="Pretendard"
                >
                  거래내역
                </Typography>
              }
              sx={{
                "&.Mui-selected": {
                  color: "rgba(0, 0, 0, 0)",
                },
              }}
              {...a11yProps(2)}
            />
          </Tabs>
        </Box>
        <TabPanel value={value} index={0}>
          <MyAssets />
        </TabPanel>
        <TabPanel value={value} index={1}>
          <RealizedPL />
        </TabPanel>
        <TabPanel value={value} index={2}>
          <AccountHistory />
        </TabPanel>
      </Box>
    </div>
  );
}

export default AccountDetailPage;
